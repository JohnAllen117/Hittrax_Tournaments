class AddFieldsToTournamentTeams < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :tournament_teams, :team_id
    remove_column :tournament_teams, :facility_id
    add_column :tournament_teams, :team_master_id, :string
    add_column :tournament_teams, :team_name, :string
    rename_column :tournament_teams, :created_at, :TS
  end

  def self.down
    add_column :tournament_teams, :team_id, :string
    add_column :tournament_teams, :facility_id, :string
    remove_column :tournament_teams, :team_master_id
    remove_column :tournament_teams, :team_name
    rename_column :tournament_teams, :TS, :created_at
  end
end
