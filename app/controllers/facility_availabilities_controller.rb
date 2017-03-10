class FacilityAvailabilitiesController < ApplicationController
  def new
    @facility_availability = FacilityAvailability.new
    @facility_availabilities = [FacilityAvailability.new]*7
  end

  def create

  end

  def edit

  end

  def update

  end
end
