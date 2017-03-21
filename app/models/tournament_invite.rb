class TournamentInvite < ApplicationRecord
  enum accepted: [:pending, :accepted, :rejected]
  validates :remote_tournament_id, presence: true
  validates :facility_id, presence: true

  belongs_to :remote_tournament
  belongs_to :facility
  belongs_to :notifiable, polymorphic: true

  def notification
    Notification.find_by(notifiable_id: self.id, notifiable_type: 0)
  end
end
