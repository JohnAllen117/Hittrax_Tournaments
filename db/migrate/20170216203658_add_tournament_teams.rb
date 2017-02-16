class AddTournamentTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :tournament_teams do |t|
      t.integer :remote_tournament_id, null: false
      t.integer :team_id, null: false
      t.integer :facility_id, null: false

      t.timestamps
    end
  end
end
