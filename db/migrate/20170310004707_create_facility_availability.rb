class CreateFacilityAvailability < ActiveRecord::Migration[5.0]
  def change
    add_column :Facilities, :OptedIn, :boolean

    create_table :facility_availabilities do |t|
      t.string :facility_master_id
      t.integer :day
      t.string :hours_start_time
      t.string :hours_end_time
      t.string :availability_start_time
      t.string :availability_end_time
      t.string :preferred_start_time
      t.string :preferred_end_time
      t.boolean :open?

      t.timestamps
    end
  end

  def down
    remove_column :Facilities, :OptedIn, :boolean
    drop_table :facility_availabilities
  end
end
