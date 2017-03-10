class FacilityAvailabilitiesController < ApplicationController
  def new
    @facility = current_user.facility
    @facility_availabilities = [FacilityAvailability.new]*7
  end

  def create
    binding.pry

  end

  def edit

  end

  def update

  end
end
