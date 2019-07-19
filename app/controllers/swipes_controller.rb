class SwipesController < ApplicationController

  #isnteud
  before_action :set_swipe, only: [:edit, :update, :show_swipe]


  def new

    @swipe = Swipe.new(
      participant_1: current_user_participant,
      participant_2: not_liked_participant
    )
    if @swipe.participant_2.nil?
      redirect_to root_path
      return
    end

    participant_2_gender =  @swipe.participant_2.user.gender
    # TODO check gender logic
    preferred_gender = current_user.preferred_gender
    checkGender(preferred_gender, participant_2_gender)

    swipe1 = Swipe.where(participant_2_id: @swipe.participant_2.id, participant_1_id: @swipe.participant_1.id ).first
    swipe2 = Swipe.where(participant_1_id: @swipe.participant_2.id, participant_2_id: @swipe.participant_1.id ).first

    if  swipe1
      @swipe = swipe1
    elsif swipe2
      @swipe = swipe2
    end
      @swipe.save!
  end

  # checkGender will select a new participant according to your gender Preferences
  def checkGender(preferred_gender, random_gender)
    #we need a way to stop infinite loops
    i = 0
    if i < 10
      while preferred_gender == "Female" && random_gender == "Male"
        @swipe.participant_2 = not_liked_participant
        i =+ 1
      end
      while preferred_gender == "Male" && random_gender == "Female"
        @swipe.participant_2 = not_liked_participant
        i =+ 1
      end
    else
      redirect_to root_path
    end
  end

  def reject
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
      fit = Match.new()
      fit.swipe_id = @swipe.id
      fit.save
      redirect_to new_match_path
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

  def random_participant
    participant1 = Participant
      .where(event: current_event)
      .where.not(user_id: current_user.id)
      .sample
  end

  def not_liked_participant
    participant_to_check = random_participant
    return nil if participant_to_check.nil?

    previous_liked_swipes = Swipe.where(
      participant_2_id: participant_to_check.id,
      participant_1_liked: true,
      participant_1_id: current_user_participant.id
      ).or(Swipe.where(
      participant_1_id: participant_to_check.id,
      participant_2_liked: true,
      participant_2_id: current_user_participant.id
      ))


    if previous_liked_swipes.empty?
      return participant_to_check
    else
      if liked_everyone?
        return nil
      else
        return not_liked_participant
      end
    end
  end

  def liked_everyone?
    all_liked_swipes = Swipe.where(
      participant_1_liked: true,
      participant_1_id: current_user_participant.id
      ).or(Swipe.where(
      participant_2_liked: true,
      participant_2_id: current_user_participant.id
    ))
    all_participants = Participant.where(event: current_event).where.not(user_id: current_user.id)

    all_liked_swipes.count == all_participants.count
  end

  def current_user_participant
    Participant.where(user: current_user, event: current_event).first
  end
end
