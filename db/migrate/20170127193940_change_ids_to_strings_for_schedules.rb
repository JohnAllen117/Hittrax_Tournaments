class ChangeIdsToStringsForSchedules < ActiveRecord::Migration[5.0]
  def up
    change_column :schedules, :home_team_id, :string
    change_column :schedules, :away_team_id, :string
  end
end
