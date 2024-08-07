class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:username].downcase
    password = params[:password]

    Rails.logger.info "Attempting login for username: #{username}"

    user = User.find_by(username: username)
    
    if user && user.authenticate(password)
      Rails.logger.info "Successful login for username: #{username}"
      session[:user_id] = user.id
      redirect_to dashboard_path, notice: 'Logged in successfully!'
    else
      Rails.logger.warn "Failed login attempt for username: #{username}"
      flash.now[:alert] = 'Invalid username or password'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'Logged out successfully!'
  end
end
