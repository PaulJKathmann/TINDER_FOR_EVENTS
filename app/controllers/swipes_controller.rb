class SwipesController < ApplicationController

  #isnteud
  before_action :set_swipe, only: [:edit, :update, :show_swipe]


  def new

    @swipe = Swipe.new
    #set the person that you are going to see
    @swipe.participant_2 = random_participant
    # set the event that you are on
    @swipe.participant_1 = current_user_participant
    #dont show me guys or girls if i dont want to see them
    random_gender = random_participant.user.gender
    preferred_gender = current_user.preferred_gender
    # we need a way check the gender
    checkGender(preferred_gender, random_gender)
    #check if the swipes already exists and then update this swipe.
    #now i have the two users, but i can not create new swipes always
    s1 = Swipe.where(participant_2_id: @swipe.participant_2.id, participant_1_id: @swipe.participant_1.id ).first
    s2 = Swipe.where(participant_1_id: @swipe.participant_2.id, participant_2_id: @swipe.participant_1.id ).first
    event = current_event
    #  Person.where(name: 'Spartacus'_SWi, rating: 4).exists?
    if  s1
      @swipe = s1
    elsif s2
      @swipe = s2
    end
    @swipe.save!

  end

  # checkGender will select a new participant according to your gender Preferences
  def checkGender(preferred_gender, random_gender)
    #we need a way to stop infinite loops
    i = 0
    if i < 10
      while preferred_gender == "Female" && random_gender == "Male"
        @swipe.participant_2 = random_participant
        i =+ 1
      end
      while preferred_gender == "Male" && random_gender == "Female"
        @swipe.participant_2 = random_participant
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
    #redirect to new swipe
    redirect_to new_swipe_path(@event.id)
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
