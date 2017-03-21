class GameRequest < ApplicationRecord
  enum accepted: [:pending, :accepted, :rejected]

  def notification
    Notification.find_by(notifiable_id: self.id, notifiable_type: self.notifiable_type)
  end

  def facility
    Facility.find_by(SId: self.home_team_facility_id)
  end
end
