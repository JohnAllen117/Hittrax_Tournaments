class CreateTournamentInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :tournament_invites do |t|
      t.integer :remote_tournament_id
      t.integer :site_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
