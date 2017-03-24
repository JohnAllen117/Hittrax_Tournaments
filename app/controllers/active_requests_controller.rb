class ActiveRequestsController < ApplicationController
  def new
    @game_request = GameRequest.find_by(params[:game_request_id])
    @active_request = ActiveRequest.new
    @teams = []
    Facility.find_by(SId: current_user.SId).teams.each do |team|
      if team.present?
        @teams << team
      end
    end

    if @teams.present?
      @teams = @teams.map { |obj| [obj[:Name], obj[:MasterID]] }
    end
  end

  def create
    @active_request = ActiveRequest.new
    if @active_request.update(active_request_params)
      @notification = Notification.create(notifiable_id: @active_request.id, notifiable_type: 2, facility_master_id: @active_request.facility_id)
      @active_request.notifiable_id = @notification.id
      @active_request.save

      flash[:notice] = "Successfully challenged to game."
      redirect_to root_path
    else
      flash[:notice] = "Failed to challenge facility."
      redirect_to game_requests_path
    end
  end

  def edit
    @active_request = ActiveRequest.find_by(id: params[:id])
    @active_notification = @active_request.notification
    @game_request = @active_request.game_request
    @game_notification = @game_request.notification
    @schedule = @game_request.schedule

    if params[:accepted].present? && params[:accepted].to_i == 1
      @active_request.accepted = 1
      @game_request.accepted = 1
      @game_request.away_team_facility_id = @active_request.challenging_facility_id
      @schedule.away_team_id = @active_request.team_master_id
      @active_notification.seen = 1
      @game_notification.seen = 1

      @active_request.save
      @game_request.save
      @schedule.save
      @active_notification.save
      @game_notification.save

      flash[:notice] = "Successfully accepted the game request!"
      redirect_to notifications_path
    else
      @active_request.accepted = 0
      @active_notification.seen = 1

      @active_request.save
      @active_notification.save
      flash[:notice] = "Rejected the game request!"
      redirect_to notifications_path
    end
  end

  private
  def active_request_params
    params.require(:active_request).permit(:facility_id, :challenging_facility_id, :team_master_id, :message, :game_request_id)
  end
end
