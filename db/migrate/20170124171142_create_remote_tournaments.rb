class CreateRemoteTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :remote_tournaments do |t|
      t.integer  :sid, null: false
      t.integer  :company_id, null: false
      t.integer  :playoff_type,                                                 null: false
      t.string   :name, limit: 50, default: "", null: false
      t.datetime :ts, default: -> { "CURRENT_TIMESTAMP" }, null: false
      t.date     :start_date, null: false
      t.integer  :finished, default: 0, null: false
      t.integer  :format, null: false
      t.integer  :winner_id
      t.integer  :winner_uid
    end
  end
end
