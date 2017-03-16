class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.string :author_master_id
      t.string :receiver_master_id

      t.timestamps
    end
    add_index :conversations, :author_master_id
    add_index :conversations, :receiver_master_id

    add_index :conversations, [:author_master_id, :receiver_master_id], unique: true
  end
end
