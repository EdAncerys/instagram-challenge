class SessionsController < ApplicationController

  def new
    # byebug
    @user = User.find_by(session[:email])
    session[:user_id] = @user.id
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
