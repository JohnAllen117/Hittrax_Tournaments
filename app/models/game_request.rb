class GameRequest < ApplicationRecord
  belongs_to :notifiable, polymorphic: true

end
