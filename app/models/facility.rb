class Facility < ApplicationRecord
  def teams
    Team.where(SId: self.sid)
  end
end
