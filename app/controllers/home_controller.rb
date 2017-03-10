class HomeController < ApplicationController
  def index
    is_opted_in?
  end
end

private

def is_opted_in?
  if current_user
    unless current_user.facility.OptedIn
      redirect_to new_facility_availability_path
    end
  end
end
