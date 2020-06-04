class UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    redirect_to sessions_new_path
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password)
  end
end
