class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.datetime :game_time, presence: true
      t.integer :sid, presence: true
      t.integer :away_team_id, presence: true
      t.integer :home_team_id, presence: true
      t.integer :remote_tournament_id, presence: true

      t.timestamps
    end
  end
end
