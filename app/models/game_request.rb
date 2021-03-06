class GameRequest < ApplicationRecord
  include TimezoneConversion
  enum accepted: [:pending, :accepted, :rejected]
  belongs_to :schedule
  has_many :active_requests

  def notification
    Notification.find_by(notifiable_id: self.id, notifiable_type: self.notifiable_type)
  end

  def facility
    Facility.find_by(SId: self.home_team_facility_id)
  end
end
