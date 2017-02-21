class FacilitiesController < ApplicationController
  def show
    @facility = current_user.facility
  end
end
