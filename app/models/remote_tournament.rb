class RemoteTournament < ApplicationRecord
  enum format: [:manual, :round_robin, :seeded]
  enum playoff_type: [:single_elimination, :double_elimination]
  validates :name, presence: true
  validates :start_date, presence: true
  validates :company_id, presence: true
  validates :format, presence: true
  validates :playoff_type, presence: true

  has_many :schedules
  has_many :facilities, through: :tournament_invites
  has_many :tournament_invites

  accepts_nested_attributes_for :tournament_invites

  def teams
    # teams = Team.where(SId: self.sid)
    # if teams.present?
    #   if self.sid2.present?
    #     teams += Team.where(SId: self.sid2)
    #   end
    # end
  end

  def self.facilities
    admin_sids = User.all.where(role: 1).pluck(:SId)
    @facilities = []
    admin_sids.each do |sid|
      if Facility.find_by(SId: sid)
        @facilities << Facility.find_by(SId: sid)
      end
    end
    @facilities = @facilities.sort_by{|x| x[:CompanyName]}.map{ |x| ["#{x.CompanyName} - #{x.State}", x.SId] }
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
