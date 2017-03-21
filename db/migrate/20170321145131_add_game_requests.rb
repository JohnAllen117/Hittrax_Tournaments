class AddGameRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :game_requests do |t|
      t.integer :schedule_id, null: false
      t.string :home_team_facility_id, null: false
      t.string :away_team_facility_id, null: false
      t.integer :accepted, null: false, default: 0

      t.timestamps
    end
  end
end
