class Notification < ApplicationRecord
  has_many :tournament_invites, as: :notifiable
  has_many :game_requests, as: :notifiable

  enum notifiable: [:tournament_invite, :game_request]
end
