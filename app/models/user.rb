class User < ActiveRecord::Base
  require 'digest/md5'
  self.table_name = "Users"

  def facility
    Facility.find_by(SId: self.SId)
  end
end
