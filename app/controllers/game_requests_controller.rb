class GameRequestsController < ApplicationController
  def index
    @q = GameRequest.where(away_team_facility_id: nil).ransack(params[:q])
    @game_requests = @q.result.includes(:schedule)
  end

  def new
    @game_request = GameRequest.new(home_team_facility_id: current_user.SId,
      away_team_facility_id: params[:away_team_facility_id])

    @teams = []
    Facility.find_by(SId: @game_request.home_team_facility_id).teams.each do |team|
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
    game_time = DateTime.parse(game_time).utc

    @schedule = Schedule.new(
      game_time: game_time,
      away_team_id: params[:schedule][:away_team_id],
      home_team_id: params[:schedule][:home_team_id],
      TS: Time.now
    )
    @schedule.save!

    @game_request = GameRequest.new(
      home_team_facility_id: current_user.SId,
      schedule_id: @schedule.id,
      message: params[:game_request][:message],
      notifiable_type: 1
    )
    if params[:game_request][:away_team_facility_id].present?
      @game_request.away_team_facility_id = params[:game_request][:away_team_facility_id]
    end
    if @game_request.valid?
      @game_request.save!
      @notification = Notification.new(notifiable_type: 1, notifiable_id: @game_request.id, facility_master_id: @game_request.away_team_facility_id)
      @notification.save!
      @game_request.notifiable_id = @notification.id
      @game_request.save!
      if @game_request.away_team_facility_id.nil?
        @active_request = ActiveRequest.new(
          game_request_id: @game_request.id
        )
      end

      flash[:notice] = "Game request sent."
      redirect_to conversations_path
    else
      flash[:notice] = "Failed to create the invite"
      redirect_to new_game_request_path
    end
  end

  def edit
    @game_request = GameRequest.find_by(id: params[:id])
    @notification = @game_request.notification
    @schedule = @game_request.schedule
    @teams = current_user.facility.teams

    if @teams.present?
      @teams = @teams.map { |obj| [obj[:Name], obj[:MasterID]] }
    end

    if params[:accepted].present? && params[:accepted].to_i == 1

    elsif @game_request.accepted == 0
      @game_request.accepted = params[:accepted].to_i
      @notification.seen = 1
      @game_request.save
      @notification.save

      flash[:notice] = "Game Request Rejected."
      redirect_to root_path
    else
      @active_notification = Notification.create(
        notifiable_type: 2,
        facility_master_id: @game_request.home_team_facility_id
      )
      @active_request = ActiveRequest.new(
        game_request_id: @game_request.id,
        facility_id: current_user.SId,
        notifiable_id: @active_notification.id
      )
      @active_request.save
      @active_notification.notifiable_id = @active_request.id
      @active_notification.save

      redirect_to root_path
    end
  end

  def update
    @game_request = GameRequest.find_by(id: params[:id])
    @notification = @game_request.notification
    @schedule = @game_request.schedule
    @schedule.away_team_id = params[:game_request][:schedule][:away_team_id]
    @game_request.accepted = 1
    @notification.seen = 1
    @game_request.save
    @notification.save
    @schedule.save

    flash[:notice] = "Successfully accepted game request!"
    redirect_to root_path
  end
end
