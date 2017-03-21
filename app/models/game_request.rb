class GameRequest < ApplicationRecord
  belongs_to :notifiable, polymorphic: true
  enum accepted[:pending, :accepted, :rejected]
  
  def facility
    Facility.find_by(MasterID: self.home_team_facility_id)
  end
end
