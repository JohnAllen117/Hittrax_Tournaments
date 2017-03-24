class ActiveRequest < ApplicationRecord
  belongs_to :game_request

  def facility
    Facility.find_by(SId: self.facility_id)
  end

  def notification
    Notification.find_by(notifiable_id: self.id, notifiable_type: self.notifiable_type)
  end
end
