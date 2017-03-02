class FacilitiesController < ApplicationController
  def show
    @facility = current_user.facility
  end

  def edit

  end

  def update

  end
end
