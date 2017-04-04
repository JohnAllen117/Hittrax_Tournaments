class RemoteTournament < ApplicationRecord
  enum format: [:manual, :round_robin, :seeded]
  enum playoff_type: [:single_elimination, :double_elimination]
  validates :name, presence: true
  validates :start_date, presence: true
  validates :company_id, presence: true
  validates :format, presence: true
  validates :playoff_type, presence: true

  has_many :schedules
  has_many :tournament_invites
  has_many :teams, through: :tournament_teams
  has_many :tournament_teams

  accepts_nested_attributes_for :tournament_invites

  def teams
    # teams = Team.where(SId: self.sid)
    # if teams.present?
    #   if self.sid2.present?
    #     teams += Team.where(SId: self.sid2)
    #   end
    # end
  end

  def facility
    Facility.find_by(SId: self.company_id)
  end

  def self.facilities(current_user_sid)
    @facilities = Facility.all.where(OptedIn: 1) #"OptedIn = ? AND SId != ?" 1, current_user_sid - alternate query to remove current user's facility
  end

  def get_facilities
    @tournament_invites = self.tournament_invites
    @facilities = []
    @tournament_invites.each do |invite|
      @facilities << invite.facility
    end
    @facilities
  end

  def get_team_values
    # team_array = []
    # self.teams.each do |team|
    #   team_array << {master_id: team[:MasterID], name: team[:Name]}
    # end
    #
    # team_array
  end
end
