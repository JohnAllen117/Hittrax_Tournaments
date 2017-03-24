class CreateActiveRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :active_requests do |t|
      t.integer :game_request_id, null: false
      t.integer :facility_id, null: false
      t.boolean :accepted, default: false
    end
  end
end
