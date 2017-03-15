class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "hittrax", password: "vKSa4k!B" if Rails.env.production?
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :mailbox

  private
  def mailbox
    mailbox ||= current_user.mailbox
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
