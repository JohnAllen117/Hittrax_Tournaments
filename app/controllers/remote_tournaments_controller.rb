class RemoteTournamentsController < ApplicationController
  before_action :authenticate
  def new
    @remote_tournament = RemoteTournament.new
    @tournament_invites = TournamentInvite.new
    @facilities = RemoteTournament.facilities(current_user.SId)
    @remote_tournament.start_date = DateTime.now
  end

  def create
    @remote_tournament = RemoteTournament.new(remote_tournament_params)
    @remote_tournament.company_id = current_user.CompanyId
    @remote_tournament.TS = DateTime.now

    if @remote_tournament.save
      flash[:notice] = "Tournament Created"
      redirect_to remote_tournament_path(@remote_tournament)
    else
      flash[:notice] = "Invalid Entry"
      render :new
    end

    tournament_invites = params[:remote_tournament][:tournament_invite][:facility_id].reject { |x| x.empty? }
    tournament_invites.each do |invite|
      t = TournamentInvite.new(facility_id: invite, remote_tournament_id: @remote_tournament.id, accepted: 0, TS: DateTime.now, notifiable_type: 0)
      if t.valid?
        t.save!
        n = Notification.create(notifiable_type: 0, notifiable_id: t.id, facility_master_id: invite)
        t.notifiable_id = n.id
        t.save!
      else
        flash[:notice] = "Failed to invite some facilities"
        redirect_to new_remote_tournament_path
      end
    end
  end

  def edit
    @remote_tournament = RemoteTournament.find_by(id: params[:id])
    @tournament_invites = TournamentInvite.new
    @facilities = RemoteTournament.facilities
  end

  def update
    @remote_tournament = RemoteTournament.find_by(id: params[:id])
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
        flash[:notice] = "Failed to invite some facilities"
        redirect_to new_remote_tournament_path
      end
    end
  end

  def show
    @remote_tournament = RemoteTournament.find_by(id: params[:id])
    team_ids = @remote_tournament.tournament_teams.pluck(:team_master_id)

    @teams = []
    team_ids.each do |team|
      t = Team.find_by(MasterId: team)
      @teams << t
    end

    @facilities = @remote_tournament.facilities(current_user.SId)

    if @teams.present?
      @teams = @teams.map { |obj| [obj[:Name], obj[:MasterID]] }
    end
    @schedules = @remote_tournament.schedules
  end

  def index
    @q = RemoteTournament.where(company_id: current_user.CompanyId).ransack(params[:q])
    @remote_tournaments = @q.result(distinct: true).uniq
  end


  private

  def remote_tournament_params
    params.require(:remote_tournament).permit(:name, :start_date, :company_id, :format, :playoff_type)
  end
end
