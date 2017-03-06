class ChangeRemoteTournamentIds < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :remote_tournaments, :winner_id
    remove_column :remote_tournaments, :winner_uid
    add_column :remote_tournaments, :winner_master_id, :string
    rename_column :remote_tournaments, :created_at, :TS
  end

  def self.down
    add_column :remote_tournaments, :winner_id, :string
    add_column :remote_tournaments, :winner_uid, :string
    remove_column :remote_tournaments, :winner_master_id
    rename_column :remote_tournaments, :TS, :created_at
  end
end
