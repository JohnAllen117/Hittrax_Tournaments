class RemoteTournamentsController < ApplicationController
  before_action :authenticate
  def new
    @remote_tournament = RemoteTournament.new
    @tournament_invites = TournamentInvite.new
    @facilities = RemoteTournament.facilities
  end

  def create
    @remote_tournament = RemoteTournament.new(remote_tournament_params)
    @remote_tournament.company_id = current_user.CompanyId

    if @remote_tournament.save
      flash[:notice] = "Tournament Created"
      redirect_to remote_tournament_path(@remote_tournament)
    else
      flash[:notice] = "Invalid Entry"
      render :new
    end

    tournament_invites = params[:remote_tournament][:tournament_invite][:facility_id].reject { |x| x.empty? }
    tournament_invites.each do |invite|
      t = TournamentInvite.new(facility_id: invite, remote_tournament_id: @remote_tournament.id, accepted: 0)
      if t.valid?
        t.save!
      else
        binding.pry
        flash[:notice] = "Failed to invite some facilities"
        redirect_to new_remote_tournament_path
      end
    end
  end

  def show
    @remote_tournament = RemoteTournament.find_by(params[:id])
    team_ids = @remote_tournament.tournament_teams.pluck(:team_id)

    @teams = []
    team_ids.each do |team|
      t = Team.find_by(id: team)
      @teams << t
    end

    @facilities = @remote_tournament.facilities

    if @teams.present?
      @teams = @teams.map { |obj| [obj[:Name], obj[:MasterID]] }
    end
    @schedules = @remote_tournament.schedules
  end

  def index
    @remote_tournaments = RemoteTournament.where(company_id: current_user.CompanyId)
  end

  def edit
    @remote_tournament = RemoteTournament.find_by(params[:id])
    @tournament_invites = TournamentInvite.new
    @facilities = RemoteTournament.facilities
  end

  def update
    @remote_tournament = RemoteTournament.find_by(params[:id])
    if @remote_tournament.update(remote_tournament_params)
      flash[:notice] = "Tournament updated"
      redirect_to remote_tournament_path(@remote_tournament)
    else
      flash[:notice] = "Invalid Entry"
      render :edit
    end
    tournament_invites = params[:remote_tournament][:tournament_invite][:facility_id].reject { |x| x.empty? }
    tournament_invites.each do |invite|
      t = TournamentInvite.new(facility_id: invite, remote_tournament_id: @remote_tournament.id, accepted: 0)
      if t.valid?
        t.save!
      else
        binding.pry
        flash[:notice] = "Failed to invite some facilities"
        redirect_to new_remote_tournament_path
      end
    end
  end

  private

  def remote_tournament_params
    params.require(:remote_tournament).permit(:name, :start_date, :company_id, :format, :playoff_type)
  end
end
