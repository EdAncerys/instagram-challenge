class SessionsController < ApplicationController

  def new
    # byebug
    @user = User.find_by(id: session[:user_id])
  end

  def create
    # byebug
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      # flash[:success] = "You have successfully logged in"
      redirect_to "/sessions/#{@user.id}"
    else
      # flash.now[:error] = "There was something wrong with your login information"
      render '/users/index'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
