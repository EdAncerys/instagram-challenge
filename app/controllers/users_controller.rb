class UsersController < ApplicationController

  def new
  end

  def create
    # byebug
    user = User.create(user_params)
    if user.save
      #   flash[:notice] = "You have successfully logged in"
      session[:user_id] = user.id
      redirect_to sessions_new_path
    else
      #   flash.now[:error] = "Something wrong with details provided!"
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end
end
