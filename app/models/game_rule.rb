class GameRule < ApplicationRecord
  enum gameable_type: [:remote_tournament, :game_request]
  has_many :remote_tournaments, as: :gameable
  has_many :game_requests, as: :gameable
end
