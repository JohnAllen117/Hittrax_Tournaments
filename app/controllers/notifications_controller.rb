class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(facility_master_id: current_user.SId)
  end
end
