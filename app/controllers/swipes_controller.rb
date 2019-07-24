class SwipesController < ApplicationController

  #isnteud
  before_action :set_swipe, only: [:edit, :update, :show_swipe]


  def new

    @swipe = Swipe.new(
      participant_1: current_user_participant,
      participant_2: set_participant_2
    )
    if @swipe.participant_2.nil?
      redirect_to root_path
      return
    end
    swipe1 = Swipe.where(participant_2_id: @swipe.participant_2.id, participant_1_id: @swipe.participant_1.id ).first
    swipe2 = Swipe.where(participant_1_id: @swipe.participant_2.id, participant_2_id: @swipe.participant_1.id ).first
    @event = Event.find(params[:id])

    if  swipe1
      @swipe = swipe1
    elsif swipe2
      @swipe = swipe2
    end
      @swipe.save!

  end


  def reject
    sleep(0.3)
    # get swipe by ide from params
    @swipe = Swipe.find(params[:id])
    @event = @swipe.participant_1.event
    # find participant which is current user

    # check if current user is participant_1 or partcicipant_2
    # set false to participant_1_liked or p2
    if current_user == @swipe.participant_1.user
      @swipe.update(participant_1_liked: false)

    elsif current_user == @swipe.participant_2.user
      @swipe.update(participant_2_liked: false)

    end
    # redirect to new swipe
    redirect_to new_swipe_path(@event.id)
  end

  def accept
    sleep(0.3)
     # get swipe by ide from params
    @swipe = Swipe.find(params[:id])
    @event = @swipe.participant_1.event
    # find participant which is current user
    # check if current user is participant_1 or partcicipant_2
    # set false to participant_1_liked or p2
    if current_user == @swipe.participant_1.user
      @swipe.update(participant_1_liked: true)
    elsif current_user == @swipe.participant_2.user
      @swipe.update(participant_2_liked: true)
    end
    # If both people liked each other a new match is created and it leads to the match new controller
    if @swipe.participant_1_liked == true && @swipe.participant_2_liked == true
      new_match = Match.create!(swipe_id: @swipe.id)
      redirect_to popup_match_path(new_match.id)
    else
      redirect_to new_swipe_path(@event.id)
    end
  end

  private

  def current_event
    Event.find(params[:id])
  end

  def swipe_params
    params[:swipe].permit(:user, :participant_2_liked, )
  end


  def current_user_participant
    Participant.where(user: current_user, event: current_event).first
  end

  def all_likable_participants
    all_participants = Participant.where(event: current_event).where.not(user_id: current_user.id)
    participants = []
    return all_participants if current_user.preferred_gender.in?([nil, "Both"])

    all_participants.select do |participant|
      current_user.preferred_gender == participant.user.gender
    end
  end

  def already_liked_participants
    all_liked_swipes = Swipe.where(
      participant_1_liked: true, #true or false to make the program only show new people.
      participant_1_id: current_user_participant.id
      ).or(Swipe.where(
      participant_2_liked: true, # true or false to make the program only show new people.
      participant_2_id: current_user_participant.id
    ))
    participants = []
    all_liked_swipes.each do |swipe|
      if swipe.participant_1 == current_user_participant
         participants << swipe.participant_2
      elsif swipe.participant_2 == current_user_participant
         participants << swipe.participant_1
      end
    end
    return participants

  end

  def set_participant_2
    options = all_likable_participants - already_liked_participants
    options.sample

  end
end


