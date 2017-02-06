class RemoteTournamentsController < ApplicationController
  before_action :authenticate
  def new
    @remote_tournament = RemoteTournament.new
    @tournament_invites = TournamentInvite.new
    @admin_sids = User.all.where(role: 1).pluck(:SId)
    @facilities = []
    @admin_sids.each do |sid|
      if Facility.find_by(SId: sid)
        @facilities << Facility.find_by(SId: sid)
      end
    end
    @facilities = @facilities.sort_by{|x| x[:CompanyName]}.map{ |x| ["#{x.CompanyName} - #{x.State}", x.SId] }
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
    @teams = []
    @facilities = @remote_tournament.facilities
    @remote_tournament.tournament_invites.where(accepted: 1).each do |invite|
      @teams << Team.where(SId: invite.facility_id)
    end
    if @teams.present?
      @teams = @teams.first.map { |obj| [obj[:Name].gsub!('"', ''), obj[:MasterID]] }
    end
    @schedules = @remote_tournament.schedules
  end

  def index
    @remote_tournaments = RemoteTournament.where(company_id: current_user.CompanyId)
  end

  def edit
    @remote_tournament = RemoteTournament.find_by(params[:id])
    @tournament_invites = TournamentInvite.new
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
