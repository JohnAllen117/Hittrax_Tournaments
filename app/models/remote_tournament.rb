class RemoteTournament < ApplicationRecord
  enum format: [:manual, :round_robin, :seeded]
  enum playoff_type: [:single_elimination, :double_elimination]
  validates :name, presence: true
  validates :start_date, presence: true
end
