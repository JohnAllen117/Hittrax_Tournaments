class Conversation < ApplicationRecord
  has_many :personal_messages, -> { order(created_at: :asc) }, dependent: :destroy
  before_create :is_unique
  validates :author, uniqueness: {scope: :receiver}

  def is_unique
    conversation = where(author_master_id: sender_master_id, receiver_master_id: receiver_master_id) || (where(author_master_id: receiver_master_id, receiver_master_id: sender_master_id))
    conversation.nil ? true : false
  end

  def author
    author = User.find_by(MasterID: self.author_master_id)
  end

  def reciever
    reciever = User.find_by(MasterID: self.receiver_master_id)
  end

  def with(current_user)
    author == current_user ? receiver : author
  end

  def participates?(user)
    author == user || receiver == user
  end

end
