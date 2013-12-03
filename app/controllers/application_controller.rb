class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :require_login

  private

  def require_login
    unless signed_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_session_path
    end
  end

end
