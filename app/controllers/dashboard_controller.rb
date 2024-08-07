class DashboardController < ApplicationController
  before_action :require_login

  def index
    # Any logic for the dashboard can be placed here
  end

  private

  def require_login
    unless session[:user_id]
      redirect_to login_path, notice: 'Please log in to access the dashboard.'
    end
  end
end
