class PersonalMessage < ApplicationRecord
  belongs_to :conversation
  validates :body, presence: true
  validates :conversation_id, presence: true
  validates :user_master_id, presence: true

  def user
    User.find_by(MasterID: self.user_master_id)
  end
end
