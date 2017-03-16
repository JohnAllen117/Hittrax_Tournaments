class Conversation < ApplicationRecord
  has_many :personal_messages, -> { order(created_at: :asc) }, dependent: :destroy

  validates :author, uniqueness: {scope: :receiver}

  scope :participating, -> (user) do
    where("(conversations.author_master_id = ? OR conversations.receiver_master_id = ?)", user.MasterID, user.MasterID)
  end

  scope :between, -> (sender_master_id, receiver_master_id) do
    where(author_master_id: sender_master_id, receiver_master_id: receiver_master_id).or(where(author_master_id: receiver_master_id, receiver_master_id: sender_master_id)).limit(1)
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
