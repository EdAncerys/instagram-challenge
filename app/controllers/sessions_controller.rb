class SessionsController < ApplicationController
  def new
    # @user = User.last
  end

  def destroy
    redirect_to root_path
  end
end
