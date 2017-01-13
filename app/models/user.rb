class User < ActiveRecord::Base
  validates :uid, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
