module TimezoneConversion
  extend ActiveSupport::Concern

  def get_timezone_offset(time_zone)
    zone = ActiveSupport::TimeZone.new time_zone

    zone.utc_offset
  end

  def convert_to_utc(local_time_zone_offset, local_time)
    local_time = Tod::TimeOfDay.parse local_time
    utc_time = local_time - local_time_zone_offset
    utc_time.strftime('%H:%M')
  end


  def convert_from_utc(local_time_zone_offset, utc_time)

  end
end
