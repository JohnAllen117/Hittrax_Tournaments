class RemoveSidsFromRemoteTournaments < ActiveRecord::Migration[5.0]
  def change
    remove_column :remote_tournaments, :sid
    remove_column :remote_tournaments, :sid2
  end
end
