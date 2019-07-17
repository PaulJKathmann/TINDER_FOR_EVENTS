class SwipesController < ApplicationController
  #isnteud
  before_action :set_swipe, only: [:edit, :update, :show_swipe]

  def new

    @swipe = Swipe.new
    #set the person that you are going to see
    @swipe.participant_2 = random_participant
    # set the event that you are on
    @swipe.participant_1 = current_user_participant
    #now i have the two users, but i can not create new swipes always


    if (condition)
      @swipe = that swipe
    else
      @
    end



    @swipe.save!
  end


  def reject
    # get swipe by ide from params
    @swipe = Swipe.find(params[:id])
    # find participant which is current user

    # check if current user is participant_1 or partcicipant_2
    # set false to participant_1_liked or p2
    if current_user == @swipe.participant_1.user
      @swipe.update(participant_1_liked: false)
    elsif current_user == @swipe.participant_2.user
      @swipe.update(participant_2_liked: false)
    end
    raise
    new

  end

  def accept
     # get swipe by ide from params
    @swipe = Swipe.find(params[:id])
    # find participant which is current user
    # check if current user is participant_1 or partcicipant_2
    # set false to participant_1_liked or p2
    if current_user == @swipe.participant_1.user
      @swipe.update(participant_1_liked: true)
    elsif current_user == @swipe.participant_2.user
      @swipe.update(participant_2_liked: true)
    end
    raise
    new
  end

  # def match_them
  #   if @swipe.participant_2 == true && @swipe.participant_1_liked ==true
  #     ### create the match i dont know how!
  #   end

  # end

  private

  def current_event
    Event.find(params[:id])
  end

  def swipe_params
    params[:swipe].permit(:user, :participant_2_liked, )
  end

  def random_participant
    Participant
      .where(event: current_event)
      .where.not(user: current_user)
      .sample
  end

  def current_user_participant

    Participant.where(user: current_user, event: current_event).first
  end
end
