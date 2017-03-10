module TimezoneConversion
  extend ActiveSupport::Concern

  def get_time_zone_offset(time_zone)
    zone = ActiveSupport::TimeZone.new time_zone

    zone.utc_offset
  end

  def convert_to_utc(local_time_zone_offset, local_time)
    local_time = convert_time_string_to_tod
    utc_time = local_time - local_time_zone_offset
    utc_time.strftime('%H:%M')
  end


  def convert_from_utc(local_time_zone, utc_time)
    utc_time = convert_time_string_to_tod(utc_time)
    utc_offset = get_time_zone_offset(local_time_zone)
    local_time = utc_time + utc_offset
    local_time.strftime('%H:%M')
  end

  def convert_time_string_to_tod(local_time)
    local_time = Tod::TimeOfDay.parse local_time
  end
end
