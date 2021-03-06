class PicturesController < ApplicationController
  def new
  end

  def create
    picture = Picture.create(picture_params)
    if picture.save
      redirect_to pictures_path
    else
      render 'new'
    end
  end

  def index
    @user = User.find_by(id: session[:user_id])
    @post = Picture.all
  end

  def update
  end

  def destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:name, user_id: session[:user_id], files: [])
  end
end
