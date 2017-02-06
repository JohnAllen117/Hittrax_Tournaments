class ChangeRemoteTournamentsFields < ActiveRecord::Migration[5.0]
  def change
    change_column :remote_tournaments, :start_date, :datetime, default: Time.now
  end
end
