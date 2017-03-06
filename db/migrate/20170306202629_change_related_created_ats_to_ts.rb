class ChangeRelatedCreatedAtsToTs < ActiveRecord::Migration[5.0]
  def change
    rename_column :schedules, :created_at, :TS
    rename_column :tournament_invites, :created_at, :TS
  end
end
