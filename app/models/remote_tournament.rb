class RemoteTournament < ApplicationRecord
  before_action :authenticate
  enum format: [:manual, :round_robin, :seeded]
  enum playoff_type: [:single_elimination, :double_elimination]
  validates :name, presence: true
  validates :start_date, presence: true
  validates :company_id, presence: true
  validates :sid, presence: true
  validates :format, presence: true
  validates :playoff_type, presence: true

end
