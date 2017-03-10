class CreateFacilityAvailability < ActiveRecord::Migration[5.0]
  def change
    add_column :Facilities, :OptedIn, :boolean

    create_table :facility_availabilities do |t|
      t.string :facility_master_id
      t.string :monday_hours_start_time
      t.string :monday_hours_end_time
      t.string :tuesday_hours_start_time
      t.string :tuesday_hours_end_time
      t.string :wednesday_hours_start_time
      t.string :wednesday_hours_end_time
      t.string :thursday_hours_start_time
      t.string :thursday_hours_end_time
      t.string :friday_hours_start_time
      t.string :friday_hours_end_time
      t.string :saturday_hours_start_time
      t.string :saturday_hours_end_time
      t.string :sunday_hours_start_time
      t.string :sunday_hours_end_time
      t.string :monday_availability_start_time
      t.string :monday_availability_end_time
      t.string :tuesday_availability_start_time
      t.string :tuesday_availability_end_time
      t.string :wednesday_availability_start_time
      t.string :wednesday_availability_end_time
      t.string :thursday_availability_start_time
      t.string :thursday_availability_end_time
      t.string :friday_availability_start_time
      t.string :friday_availability_end_time
      t.string :saturday_availability_start_time
      t.string :saturday_availability_end_time
      t.string :sunday_availability_start_time
      t.string :sunday_availability_end_time
      t.boolean :monday_open?, default: 0
      t.boolean :tuesday_open?, default: 0
      t.boolean :wednesday_open?, default: 0
      t.boolean :thursday_open?, default: 0
      t.boolean :friday_open?, default: 0
      t.boolean :saturday_open?, default: 0
      t.boolean :sunday_open?, default: 0

      t.timestamps
    end
  end

  def down
    remove_column :Facilities, :OptedIn, :boolean
    drop_table :facility_availabilities
  end
end
