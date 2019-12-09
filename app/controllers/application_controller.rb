class ApplicationController < ActionController::Base
  def require_authentication
    unless logged_in?
      redirect_to login_url, notice: "Please log in first"
      return false
    end
  end
end
