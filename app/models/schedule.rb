class Schedule < ApplicationRecord
  belongs_to :remote_tournament

  after_create do
    self.UUId = SecureRandom.uuid
    self.save!
  end
end
