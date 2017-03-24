class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(facility_master_id: current_user.SId, seen: 0)
  end
end
