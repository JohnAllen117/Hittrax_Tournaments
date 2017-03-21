class Team < ApplicationRecord
  self.table_name = "Teams"

  has_many :tournament_teams, foreign_key: 'team_id', primary_key: 'Id'
  has_many :schedules

  def facility
    Facility.find_by(SId: self.SId)
  end
end
