class ChangeGameRequests < ActiveRecord::Migration[5.0]
  def change
    change_column :game_requests, :away_team_facility_id, :string, null: true
  end
end
