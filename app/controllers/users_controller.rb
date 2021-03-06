class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_email = params[:user][:Email]
    password = params[:user][:password]
    u = User.find_by(email: user_email, role: 1)
    if u.present?
      if Digest::MD5.hexdigest(password) == u.Hash
        set_auth_token(u)
      end
      if u.auth_token.present?
        flash[:notice] = "Signed in"
        session[:auth_token] = u.auth_token
        u.save
        redirect_to root_path
      else
        flash[:notice] = "invalid credentials"
        redirect_to new_user_path
      end
    else
      flash[:notice] = "invalid credentials"
      redirect_to new_user_path
    end
  end

  def edit
    u = User.find_by(MasterId: params["id"])
    session[:auth_token] = nil
    reset_session
    current_user = nil
    u.auth_token = nil
    u.save
    flash[:notice] = "You have been successfully logged out."
    redirect_to root_url
  end

  private
  def set_auth_token(u)
    return if u.auth_token.present?
    u.auth_token = generate_auth_token
    u.save
  end

  def generate_auth_token
    SecureRandom.uuid.gsub(/\-/,'')
  end

  def remove_auth_token(u)
  end
end
