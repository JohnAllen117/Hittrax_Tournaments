class PersonalMessage < ApplicationRecord
  belongs_to :conversation

  def user
    User.find_by(MasterID: self.user_master_id)
  end

  validates :body, presence: true
end
