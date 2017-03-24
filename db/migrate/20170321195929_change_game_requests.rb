class ChangeGameRequests < ActiveRecord::Migration[5.0]
  def up
    change_column :game_requests, :away_team_facility_id, :string, null: true
    add_column :game_requests, :message, :string
  end

  def down
    change_column :game_requests, :away_team_facility_id, :string, null: true
    remove_column :game_requests, :message, :string
  end
end
