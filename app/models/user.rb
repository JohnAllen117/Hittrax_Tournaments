class User < ActiveRecord::Base
  validates :UId, presence: true
end
