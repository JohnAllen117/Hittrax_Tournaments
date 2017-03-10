class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "hittrax", password: "vKSa4k!B" if Rails.env.production?
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :ensure_opted_in

  def ensure_opted_in
    if current_user
      unless current_user.facility.OptedIn
        redirect_to new_facility_availability_path
      end
    end
  end

  protected
  def current_user
    if session[:auth_token].present?
      User.find_by(auth_token: session[:auth_token])
    end
  end

  def authenticate
    if current_user.present?
      true
    else
      flash[:notice] = "You must be signed in to do that"
      redirect_to new_user_path
    end
  end
end
