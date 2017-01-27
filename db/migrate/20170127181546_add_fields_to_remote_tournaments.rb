class AddFieldsToRemoteTournaments < ActiveRecord::Migration[5.0]
  def change
    add_column :remote_tournaments, :sid2, :integer
  end
end
