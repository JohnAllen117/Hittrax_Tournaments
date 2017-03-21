class Notification < ApplicationRecord
  has_many :tournament_invites, as: :notifiable
  has_many :game_requests, as: :notifiable

  def facility
    Facility.find_by(MasterID: self.facility_master_id)
  end

  enum notifiable: [:tournament_invite, :game_request]
end
