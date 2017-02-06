class TournamentInvite < ApplicationRecord
  enum accepted: [:pending, :accepted, :rejected]
  validates :remote_tournament_id, presence: true
  validates :facility_id, presence: true

  belongs_to :remote_tournament
  belongs_to :facility
end
