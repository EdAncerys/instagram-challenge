class UsersController < ApplicationController

  def new
  end

  def create
    # byebug
    user = User.create(user_params)
    session[:user_id] = user.id
    if user.save
      redirect_to "/sessions/#{user.id}"
    else
      flash.now[:error] = "Something wrong with details provided!"
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end
end
