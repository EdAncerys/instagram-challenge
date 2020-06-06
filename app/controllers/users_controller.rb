class UsersController < ApplicationController

  def new
  end

  def create
    # byebug
    @user = User.create(user_params)
    redirect_to sessions_new_path
    # if user
    #   flash[:success] = "You have successfully logged in"
    #   redirect_to sessions_new_path
    # else
    #   flash[:error] = "Something wrong with details provided!"
    #   render 'new'
    # end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end
end
