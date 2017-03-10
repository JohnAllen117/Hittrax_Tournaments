class AddOptedInToFacilities < ActiveRecord::Migration[5.0]
  def change
    add_column :Facilities, :OptedIn, :boolean, default: 0

    create_table :facility_availability do |t|
      t.string :facility_master_id
      t.string :hours_start_time
      t.string :hours_end_time
      t.string :availability_start_time
      t.string :availability_end_time
      t.integer :day

      t.timestamps
    end
  end
end
