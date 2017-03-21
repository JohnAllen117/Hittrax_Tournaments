class CreateNotifications < ActiveRecord::Migration[5.0]
  def up
    create_table :notifications do |t|
      t.integer :notifiable_id
      t.integer :notifiable_type
      t.boolean :accepted, default: false
      t.string :facility_master_id

      t.timestamps
    end

    add_column :game_requests, :notifiable_id, :integer
    add_column :game_requests, :notifiable_type, :integer
    add_index :game_requests, [:notifiable_id, :notifiable_type]

    add_column :tournament_invites, :notifiable_id, :integer
    add_column :tournament_invites, :notifiable_type, :integer
    add_index :tournament_invites, [:notifiable_id, :notifiable_type]
  end

  def down
    drop_table :notifications
    remove_column :game_requests, :notifiable_id, :integer
    remove_column :game_requests, :notifiable_type, :integer

    remove_column :tournament_invites, :notifiable_id, :integer
    remove_column :tournament_invites, :notifiable_type, :integer
  end
end
