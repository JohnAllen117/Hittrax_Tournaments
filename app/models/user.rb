class User < ActiveRecord::Base
  require 'digest/md5'
  self.table_name = "Users"

  def facility
    Facility.find_by(SId: self.SId)
  end

  acts_as_messageable

  def mailboxer_email
    self.Facility.Email
  end

  def mailboxer_name
    self.Facility.CompanyName
  end
end
