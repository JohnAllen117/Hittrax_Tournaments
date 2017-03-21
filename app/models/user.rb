class User < ActiveRecord::Base
  require 'digest/md5'
  has_many :authored_conversations, class_name: 'Conversation', foreign_key: 'author_master_id'
  has_many :received_conversations, class_name: 'Conversation', foreign_key: 'receiver_master_id'
  has_many :personal_messages, dependent: :destroy

  self.table_name = "Users"

  def facility
    Facility.find_by(SId: self.SId)
  end

  def time_zone
    self.facility.facility_availability.time_zone
  end
end
