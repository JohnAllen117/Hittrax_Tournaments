class FacilityAvailabilitiesController < ApplicationController
  def new
    @facility_availabilities = [FacilityAvailability.new]*7
    @days_of_week = (1..7)
  end

  def create

  end

  def edit

  end

  def update

  end
end
