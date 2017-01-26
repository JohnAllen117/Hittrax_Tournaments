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
          puts "invalid entry #{num_errors}, id: #{obj[:id]}"
        end
      end
    end
    puts "total number of errors: #{num_errors}"
  end
end
