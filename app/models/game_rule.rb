class GameRule < ApplicationRecord
  enum gameable: [:remote_tournament, :game_request]
  belongs_to :remote_tournaments
  belongs_to :game_requests
end
