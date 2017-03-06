class TournamentTeam < ApplicationRecord
  validates :remote_tournament_id, presence: true
  validates :team_master_id, presence: true

  belongs_to :remote_tournament
  belongs_to :facility

  def team
    Team.find_by(MasterId: self.team_master_id)
  end
end
