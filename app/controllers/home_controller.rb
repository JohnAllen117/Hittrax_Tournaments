class HomeController < ApplicationController
  def index
    if current_user
      unless current_user.facility.OptedIn
        redirect_to new_facility_availability_path
      end
    end
  end
end
