class AddUuIdToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :UUId, :string
  end
end
