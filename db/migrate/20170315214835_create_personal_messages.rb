class CreatePersonalMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_messages do |t|
      t.text :body
      t.integer :conversation_id
      t.string :user_master_id

      t.timestamps
    end
  end
end
