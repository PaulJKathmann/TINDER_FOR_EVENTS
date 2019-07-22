class ParticipantsController < ApplicationController
  def new
  end

  def create
    if Participant.where(event_id: params[:id], user_id: current_user).empty?
      @participant = Participant.new
      @participant.event = Event.find(params[:id])
      @participant.user = current_user
      if @participant.save!
        redirect_to profile_path
      else
        redirect_to events_path(params[:id])
      end
    else
      redirect_to new_swipe_path(params[:id])
    end
  end

  def edit
  end

  def update
  end

  def show
  end
end
