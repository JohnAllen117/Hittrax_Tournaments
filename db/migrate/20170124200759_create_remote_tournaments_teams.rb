class CreateRemoteTournamentsTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :remote_tournaments_teams do |t|
      t.integer :remote_tournament_id, presence: true
      t.integer :team_id, presence: true

      t.timestamps
    end
  end
end
