class PhotosController < ApplicationController

  before_action :authenticate_user!

  def index
    @photos = current_user.photos.page(params[:page]).per(4)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.new(photo_params)
    if @photo.save
      redirect_to photos_path
    else
      render 'new'
    end
  end

  private
    def photo_params
      params.require(:photo).permit(:title, :description, :private, :attachment)
    end

end

