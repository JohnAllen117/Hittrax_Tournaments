class FacilityAvailabilitiesController < ApplicationController
  def new
    @facility = current_user.facility
    @facility_availability = FacilityAvailability.new
  end

  def create
    @facility = current_user.facility
    @facility.CompanyName = params[:facility_availability][:facility][:CompanyName]
    @facility.ContactName = params[:facility_availability][:facility][:ContactName]
    @facility.Email = params[:facility_availability][:facility][:Email]
    @facility.Phone = params[:facility_availability][:facility][:Phone]
    @facility.save

    @facility_availability = FacilityAvailability.new
    @facility_availability.get_facility_hours(params)
    @facility_availability.facility_master_id = @facility.MasterID

    if @facility_availability.valid?
      @facility_availability.save
      redirect_to facility_path(@facility)
    else
      flash[:notice] = "Failed to save some data"
      redirect_to new_facility_availability_path
    end
  end

  def edit

  end

  def update

  end

private
  def facility_availability_params
    params.require(:facility_availability).permit(:monday_hours_start_time,
      :monday_hours_end_time, :tuesday_hours_start_time,
      :tuesday_hours_end_time, :wednesday_hours_start_time,
      :wednesday_hours_end_time, :thursday_hours_start_time,
      :thursday_hours_end_time, :friday_hours_start_time,
      :friday_hours_end_time, :saturday_hours_start_time,
      :saturday_hours_end_time, :sunday_hours_start_time,
      :sunday_hours_end_time, :monday_availability_start_time,
      :monday_availability_end_time, :tuesday_availability_start_time,
      :tuesday_availability_end_time, :wednesday_availability_start_time,
      :wednesday_availability_end_time, :thursday_availability_start_time,
      :thursday_availability_end_time, :friday_availability_start_time,
      :friday_availability_end_time, :saturday_availability_start_time,
      :saturday_availability_end_time, :sunday_availability_start_time,
      :sunday_availability_end_time, :monday_open, :tuesday_open, :wednesday_open,
      :thursday_open, :friday_open, :saturday_open, :sunday_open, :time_zone)
  end
end
