class FacilityAvailabilitiesController < ApplicationController
  def new
    @facility_availabilities = [FacilityAvailability.new]*7
    @days_of_week = (1..7)
    @hours = *(0..23)
    @minutes = ["00","15","30","45"]
  end

  def create

  end

  def edit

  end

  def update

  end
end
