class User < ActiveRecord::Base
  require 'digest/md5'
  validates :UId, presence: true

  def get_facility
    Facility.find_by(SId: self.SId)
  end
end
