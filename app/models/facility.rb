class Facility < ApplicationRecord
  require 'csv'
  self.table_name = "Facilities"

  has_many :tournament_invites
  belongs_to :remote_tournament

  def teams
    Team.where(SId: self.SId)
  end

  def self.generate_csv
    File.open("teams.csv", "w") do |csv|
      csv << Team.column_names
      Team.all.each do |u|
        values = u.attributes.values
        csv << values
      end
    end
    File.open('teams.csv', 'w') do |csv|
      csv << Team.column_names
      Team.all.each do |m|
        csv << m.attributes.values.to_s + "\n"
      end
    end
  end
end
