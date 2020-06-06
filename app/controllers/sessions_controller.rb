class SessionsController < ApplicationController

  def new
    # byebug
    # @user = User.find_by(lname: params[:session][:lname])
    @user = User.find_by(session[:id])
  end

  def destroy
    redirect_to root_path
  end
end
