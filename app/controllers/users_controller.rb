class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)
    @event = Event.find(params[:id])
    if @user.save
      redirect_to new_swipe_path(@event.id)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :bio, :gender, :preferred_gender, :preferred_match_type)
  end
end
