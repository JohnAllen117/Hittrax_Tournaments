class User < ActiveRecord::Base
  require 'digest/md5'
  self.table_name = "Users"
  acts_as_messageable

  def mailboxer_email(messageable)
    self.Email
  end

  def mailboxer_name
    self.CompanyName
  end

  def facility
    Facility.find_by(SId: self.SId)
  end
end
