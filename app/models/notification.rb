class Notification < ApplicationRecord
  has_many :tournament_invites, as: :notifiable
  has_many :game_requests, as: :notifiable

  def facility
    Facility.find_by(MasterID: self.facility_master_id)
  end

  def notifiable
    if notifiable_type == 0
      notifiable = TournamentInvite.find_by(id: notifiable_id)
    else
      notifiable = GameRequest.find_by(id: notifiable_id)
    end
  end

  enum notifiable: [:tournament_invite, :game_request]
end
