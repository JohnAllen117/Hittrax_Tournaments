class RemoteTournamentsController < ApplicationController
  def new
    @remote_tournament = RemoteTournament.new
  end

  def create
    @remote_tournament = RemoteTournament.new(remote_tournament_params)
    if @remote_tournament.save
      flash[:notice] = "Tournament Created"
      redirect_to root_path
    else
      flash[:notice] = "Invalid Entry"
      render :new
    end
  end

  def show
    @remote_tournament = RemoteTournament.find(params[:id])
  end

  private

  def remote_tournament_params
    params.require(:remote_tournament).permit(:name, :start_date, :company_id, :sid, :format, :playoff_type)
  end
end
