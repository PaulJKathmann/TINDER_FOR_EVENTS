class UsersController < ApplicationController
  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    if @user.save
      redirect_to swipes_path(params[:id])
    else
      render :edit
    end
  end
end
