class FacilityAvailability < ApplicationRecord
  include TimezoneConversion

  def facility
    Facility.find_by(MasterID: self.facility_master_id)
  end

  def get_facility_hours(params)
    self.time_zone = params[:facility_availability][:time_zone]
    offset = get_time_zone_offset(self.time_zone)
    self.monday_hours_start_time = convert_to_utc offset, params[:facility_availability]["monday_hours_start_time(4i)"] + ":" + params[:facility_availability]["monday_hours_start_time(5i)"]
    self.monday_hours_end_time = convert_to_utc offset, params[:facility_availability]["monday_hours_end_time(4i)"] + ":" + params[:facility_availability]["monday_hours_end_time(5i)"]
    self.tuesday_hours_start_time = convert_to_utc offset, params[:facility_availability]["tuesday_hours_start_time(4i)"] + ":" + params[:facility_availability]["tuesday_hours_start_time(5i)"]
    self.tuesday_hours_end_time = convert_to_utc offset, params[:facility_availability]["tuesday_hours_end_time(4i)"] + ":" + params[:facility_availability]["tuesday_hours_end_time(5i)"]
    self.wednesday_hours_start_time = convert_to_utc offset, params[:facility_availability]["wednesday_hours_start_time(4i)"] + ":" + params[:facility_availability]["wednesday_hours_start_time(5i)"]
    self.wednesday_hours_end_time = convert_to_utc offset, params[:facility_availability]["wednesday_hours_end_time(4i)"] + ":" + params[:facility_availability]["wednesday_hours_end_time(5i)"]
    self.thursday_hours_start_time = convert_to_utc offset, params[:facility_availability]["thursday_hours_start_time(4i)"] + ":" + params[:facility_availability]["thursday_hours_start_time(5i)"]
    self.thursday_hours_end_time = convert_to_utc offset, params[:facility_availability]["thursday_hours_end_time(4i)"] + ":" + params[:facility_availability]["thursday_hours_end_time(5i)"]
    self.friday_hours_start_time = convert_to_utc offset, params[:facility_availability]["friday_hours_start_time(4i)"] + ":" + params[:facility_availability]["friday_hours_start_time(5i)"]
    self.friday_hours_end_time = convert_to_utc offset, params[:facility_availability]["friday_hours_end_time(4i)"] + ":" + params[:facility_availability]["friday_hours_end_time(5i)"]
    self.saturday_hours_start_time = convert_to_utc offset, params[:facility_availability]["saturday_hours_start_time(4i)"] + ":" + params[:facility_availability]["saturday_hours_start_time(5i)"]
    self.saturday_hours_end_time = convert_to_utc offset, params[:facility_availability]["saturday_hours_end_time(4i)"] + ":" + params[:facility_availability]["saturday_hours_end_time(5i)"]
    self.sunday_hours_start_time = convert_to_utc offset, params[:facility_availability]["sunday_hours_start_time(4i)"] + ":" + params[:facility_availability]["sunday_hours_start_time(5i)"]
    self.sunday_hours_end_time = convert_to_utc offset, params[:facility_availability]["sunday_hours_end_time(4i)"] + ":" + params[:facility_availability]["sunday_hours_end_time(5i)"]
    self.monday_availability_start_time  = convert_to_utc offset, params[:facility_availability]["monday_availability_start_time(4i)"] + ":" + params[:facility_availability]["monday_availability_start_time(5i)"]
    self.monday_availability_end_time = convert_to_utc offset, params[:facility_availability]["monday_availability_end_time(4i)"] + ":" + params[:facility_availability]["monday_availability_end_time(5i)"]
    self.tuesday_availability_start_time = convert_to_utc offset, params[:facility_availability]["tuesday_availability_start_time(4i)"] + ":" + params[:facility_availability]["tuesday_availability_start_time(5i)"]
    self.tuesday_availability_end_time = convert_to_utc offset, params[:facility_availability]["tuesday_availability_end_time(4i)"] + ":" + params[:facility_availability]["tuesday_availability_end_time(5i)"]
    self.wednesday_availability_start_time = convert_to_utc offset, params[:facility_availability]["wednesday_availability_start_time(4i)"] + ":" + params[:facility_availability]["wednesday_availability_start_time(5i)"]
    self.wednesday_availability_end_time = convert_to_utc offset, params[:facility_availability]["wednesday_availability_end_time(4i)"] + ":" + params[:facility_availability]["wednesday_availability_end_time(5i)"]
    self.thursday_availability_start_time = convert_to_utc offset, params[:facility_availability]["thursday_availability_start_time(4i)"] + ":" + params[:facility_availability]["thursday_availability_start_time(5i)"]
    self.thursday_availability_end_time = convert_to_utc offset, params[:facility_availability]["thursday_availability_end_time(4i)"] + ":" + params[:facility_availability]["thursday_availability_end_time(5i)"]
    self.friday_availability_start_time = convert_to_utc offset, params[:facility_availability]["friday_availability_start_time(4i)"] + ":" + params[:facility_availability]["friday_availability_start_time(5i)"]
    self.friday_availability_end_time = convert_to_utc offset, params[:facility_availability]["friday_availability_end_time(4i)"] + ":" + params[:facility_availability]["friday_availability_end_time(5i)"]
    self.saturday_availability_start_time = convert_to_utc offset, params[:facility_availability]["saturday_availability_start_time(4i)"] + ":" + params[:facility_availability]["saturday_availability_start_time(5i)"]
    self.saturday_availability_end_time = convert_to_utc offset, params[:facility_availability]["saturday_availability_end_time(4i)"] + ":" + params[:facility_availability]["saturday_availability_end_time(5i)"]
    self.sunday_availability_start_time = convert_to_utc offset, params[:facility_availability]["sunday_availability_start_time(4i)"] + ":" + params[:facility_availability]["sunday_availability_start_time(5i)"]
    self.sunday_availability_end_time = convert_to_utc offset, params[:facility_availability]["sunday_availability_end_time(4i)"] + ":" + params[:facility_availability]["sunday_availability_end_time(5i)"]
    self.monday_open = params[:facility_availability][:monday_open].to_i
    self.tuesday_open = params[:facility_availability][:tuesday_open].to_i
    self.wednesday_open = params[:facility_availability][:wednesday_open].to_i
    self.thursday_open = params[:facility_availability][:thursday_open].to_i
    self.friday_open = params[:facility_availability][:friday_open].to_i
    self.saturday_open = params[:facility_availability][:saturday_open].to_i
    self.sunday_open = params[:facility_availability][:sunday_open].to_i
  end
end
