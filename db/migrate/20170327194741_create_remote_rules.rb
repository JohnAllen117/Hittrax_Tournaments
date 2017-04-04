class CreateRemoteRules < ActiveRecord::Migration[5.0]
  def change
    create_table :game_rules do |t|
      t.string :name
      t.text :description
    end
    
    create_table :remote_rules do |t|
      t.integer :game_rule_id
      t.integer :gameable_id
      t.integer :gameable_type
    end
  end
end
