class FacilitiesController < ApplicationController
  def show
    @facility = current_user.facility
  end

  def edit
    @facility = current_user.facility
  end

  def update
    binding.pry
    @facility = Facility.find_by(params[:id])

  end
end
