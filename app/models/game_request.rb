class GameRequest < ApplicationRecord
  enum accepted: [:pending, :accepted, :rejected]

  belongs_to :notifiable, polymorphic: true

  def facility
    Facility.find_by(MasterID: self.home_team_facility_id)
  end
end
