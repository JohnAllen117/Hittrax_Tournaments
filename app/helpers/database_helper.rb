module DatabaseHelper
  def db_connect
    ActiveRecord::Base.establish_connection(
      adapter:  'mysql2',
      host:     'hittraxstatscenter.com',
      database: 'hittrax_centralDB',
      username: 'hittrax_yury',
      password: Rails.application.secrets[:external_database][:password]
    )
  end
end
