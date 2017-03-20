class Conversation < ApplicationRecord
  has_many :personal_messages, dependent: :destroy
  before_create :is_unique
  validates :author_master_id, presence: true
  validates :receiver_master_id, presence: true

  def is_unique
    conversation = where(author_master_id: sender_master_id, receiver_master_id: receiver_master_id) || (where(author_master_id: receiver_master_id, receiver_master_id: sender_master_id))
    conversation.nil ? true : false
  end
end
