class RemoteTournament < ApplicationRecord
  enum format: [:manual, :round_robin, :seeded]
  enum playoff_type: [:single_elimination, :double_elimination]
  validates :name, presence: true
  validates :start_date, presence: true
  validates :company_id, presence: true
  validates :sid, presence: true
  validates :format, presence: true
  validates :playoff_type, presence: true

  has_many :schedules

  def teams
    teams = Team.where(SId: self.sid)
    if self.sid2.present?
      teams += Team.where(SId: self.sid2)
    end
  end

  def get_team_values
    team_array = []
    self.teams.each do |team|
      team_array << {master_id: team[:MasterID], name: team[:Name]}
    end
    
    team_array
  end
end
