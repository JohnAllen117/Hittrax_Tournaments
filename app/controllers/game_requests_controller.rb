class GameRequestsController < ApplicationController
  def new
    @game_request = GameRequest.new(home_team_facility_id: params[:home_team_facility_id],
      away_team_facility_id: params[:away_team_facility_id])
    @teams = []
    Facility.find_by(MasterID: @game_request.home_team_facility_id).teams.each do |team|
      if team.present?
        @teams << team
      end
    end
    Facility.find_by(MasterID: @game_request.away_team_facility_id).teams.each do |team|
      if team.present?
        @teams << team
      end
    end
    if @teams.present?
      @teams = @teams.map { |obj| [obj[:Name], obj[:MasterID]] }
    end
    @schedule = Schedule.new
  end

  def create
    game_time = params[:schedule]["game_time(2i)"] + " " +
    params[:schedule]["game_time(3i)"] + " " +
    params[:schedule]["game_time(1i)"] + " " +
    params[:schedule]["game_time(4i)"] + ":" +
    params[:schedule]["game_time(5i)"]
    game_time = DateTime.parse(game_time)

    @schedule = Schedule.new(
      game_time: game_time,
      away_team_id: params[:schedule][:away_team_id],
      home_team_id: params[:schedule][:home_team_id],
      TS: Time.now
    )
    @schedule.save!

    @game_request = GameRequest.new(
      home_team_facility_id: params[:game_request][:home_team_facility_id],
      away_team_facility_id: params[:game_request][:away_team_facility_id],
      schedule_id: @schedule.id,
      notifiable_type: 1
    )
    if @game_request.valid?
      @game_request.save!
      @notification = Notification.new(notifiable_type: 1, notifiable_id: @game_request.id, facility_master_id: @game_request.away_team_facility_id)
      @notification.save!
      @game_request.notifiable_id = @notification.id
      @game_request.save!
      redirect_to conversations_path
    else
      flash[:notice] = "Failed to create the invite"
      redirect_to new_game_request_path
    end
  end
end
