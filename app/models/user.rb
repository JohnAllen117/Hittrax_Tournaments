class User < ActiveRecord::Base
  require 'digest/md5'
  self.table_name = "Users"

  def get_facility
    Facility.find_by(SId: self.SId)
  end
end
