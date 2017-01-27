module CsvHelper
  require 'csv'

  def load_full_csv(path)
    num_errors = 0

    table = Object.const_get path.split(/\W+/).fourth.singularize
    csv_text = File.read(path)
    csv_text.scrub!
    csv = CSV.parse(csv_text, headers: true)

    ActiveRecord::Base.transaction do
      csv.each do |statement|
        obj = table.new(statement.map{|col, val| [col.to_sym, sanitize(val.mb_chars.normalize(:kd).gsub(/[^\x00-\x7F]/n,''))]}.to_h)

        if obj.valid?
          obj.save!
        else
          num_errors += 1
        end
      end
    end
  end

  def parse_csv(path)
    table = Object.const_get path.split(/\W+/).fourth.singularize

    headers = []
    import_hash = []
    num_errors = 0
    File.foreach(path) do |csv_line|
      if headers.empty?
        headers = csv_line.split(/\W+/).collect{ |x| x.to_sym }
        headers = [:Id, :UId, :SId, :CompanyId, :Local, :Role, :Consent, :Active, :Uuid, :Disable, :FirstName, :LastName, :UserName, :Hash, :TS, :Updated, :Email, :Email2, :DKEmail, :ScreenName, :resetToken, :Stadium, :SkillLevel, :GameType, :Gender, :Throws, :Position, :GraduationYear, :Height, :HHVel, :School, :HomeTown, :Certified, :BirthDate, :SubscriptionStart, :SubscriptionType, :SubscriptionLevel, :Subscription, :MasterID, :AuthorizeNetProfileID, :AuthorizeNetPaymentProfileID, :EmailSent, :SubscriptionLevelPurchased, :Subscribe, :MembershipThruFacility, "Last MailChimp Update", :InvalidEmail]
        next
      end

      csv_row = CSV.parse(csv_line.gsub('\\ "', ''), quote_char: "\x00").first
      csv_row = Hash[headers.zip csv_row]
      import_hash << csv_row
      puts "csv_row created size #{import_hash.size}"
    end

    ActiveRecord::Base.transaction do
      import_hash.each do |import_hash_row|
        import_model = table.new(import_hash_row)
        if import_model.valid?
          import_model.save
        else
          next
        end
      end
    end
    puts "number of failed entries is #{num_errors}"
  end
end
