class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.string :author_master_id
      t.string :receiver_master_id

      t.timestamps
    end
  end
end
