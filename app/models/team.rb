class Team < ApplicationRecord
  self.table_name = "Teams"

  has_many :tournament_teams
end
