class SessionsController < ApplicationController
  include SessionsHelper
  skip_before_filter :require_login, only: [:new, :create]

  def new

  end

  def create
    user= User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to new_member_path
    else
      flash.now[:error] = 'Invalid email or password'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end

