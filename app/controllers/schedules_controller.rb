class SchedulesController < ApplicationController
  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.TS = DateTime.now
    if @schedule.save
      flash[:notice] = "Game Created"
      redirect_to remote_tournament_path(@schedule.remote_tournament)
    else
      flash[:notice] = "Invalid Entry"
      render remote_tournament_path(@schedule.remote_tournament)
    end
  end

  def schedule_params
    params.require(:schedule).permit(:game_time, :away_team_id, :home_team_id, :remote_tournament_id)
  end
end
