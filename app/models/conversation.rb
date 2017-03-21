class Conversation < ApplicationRecord
  has_many :personal_messages
  before_create :is_unique
  before_destroy :delete_children
  validates :author_master_id, presence: true
  validates :receiver_master_id, presence: true

  def is_unique
    conversation = Conversation.find_by(author_master_id: author_master_id, receiver_master_id: receiver_master_id) || (Conversation.find_by(author_master_id: receiver_master_id, receiver_master_id: author_master_id))
    conversation.present? ? conversation : Conversation.new(author_master_id: author_master_id, receiver_master_id: receiver_master_id)
  end

  def delete_children
    self.personal_messages.destroy_all
  end

  def author
    User.find_by(MasterID: self.author_master_id)
  end

  def receiver
    User.find_by(MasterID: self.receiver_master_id)
  end

  def with(current_user)
    author == current_user ? receiver : author
  end

  def participates?(user)
    author_master_id == user.MasterID || receiver_master_id == user.MasterID
  end
end
