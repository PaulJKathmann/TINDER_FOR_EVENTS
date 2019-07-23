class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new()
    @picture.user = current_user
    if @picture.save
      redirect_to profile_path(params[:id])
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:url, :user_id)
  end
end
