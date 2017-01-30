class Facility < ApplicationRecord
  self.table_name = "Facilities"

  def teams
    Team.where(SId: self.sid)
  end
end
