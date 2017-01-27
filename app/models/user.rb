class User < ActiveRecord::Base
  require 'digest/md5'
  validates :UId, presence: true
end
