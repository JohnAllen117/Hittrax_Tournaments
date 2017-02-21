class TournamentTeam < ApplicationRecord
  validates :remote_tournament_id, presence: true
  validates :facility_id, presence: true
  validates :team_id, presence: true

  belongs_to :remote_tournament
  belongs_to :facility

  def team
    Team.find_by(Id: self.team_id)
  end
end
