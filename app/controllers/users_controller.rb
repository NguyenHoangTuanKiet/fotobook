class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  def show
    @user = User.find(params[:id])
  end

  def destroy_avatar
    current_user.remove_avatar!(:thumb)
    current_user.save

    redirect_to user_path(current_user)
  end

end
