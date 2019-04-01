class PhotosController < ApplicationController

  def index

  end

  def new
    @photo = Photo.new
  end

  def create
    user = current_user
    photo = user.photos.create(photo_params)
    byebug
    redirect_to user_photos_path(user.id)
  end

  private
    def photo_params
      params.require(:photo).permit(:title, :description, :attachment)
    end

end

