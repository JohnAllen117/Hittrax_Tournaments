class Schedule < ApplicationRecord
  belongs_to :remote_tournament
  has_one :game_request

  after_create do
    self.UUId = SecureRandom.uuid
    self.save!
  end
end
