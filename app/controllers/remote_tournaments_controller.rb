class RemoteTournamentsController < ApplicationController
  before_action :authenticate
  def new
    @remote_tournament = RemoteTournament.new
  end

  def create
    @remote_tournament = RemoteTournament.new(remote_tournament_params)
    @remote_tournament.sid = current_user.SId
    @remote_tournament.company_id = current_user.CompanyId
    if @remote_tournament.save
      flash[:notice] = "Tournament Created"
      redirect_to remote_tournament_path(@remote_tournament)
    else
      flash[:notice] = "Invalid Entry"
      render :new
    end
  end

  def show
    @remote_tournament = RemoteTournament.find(params[:id])
    @schedules = @remote_tournament.schedules
  end

  def index
    @remote_tournaments = RemoteTournament.where(sid: current_user.SId)
  end

  private

  def remote_tournament_params
    params.require(:remote_tournament).permit(:name, :start_date, :company_id, :sid, :format, :playoff_type)
  end
end
