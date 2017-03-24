class CreateActiveRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :active_requests do |t|
      t.integer :game_request_id, null: false
      t.integer :facility_id, null: false
      t.integer :challenging_facility_id
      t.string :team_master_id
      t.boolean :accepted, default: false
      t.string :message

      t.integer :notifiable_id
      t.integer :notifiable_type, default: 2
    end
  end
end
