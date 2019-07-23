class MatchesController < ApplicationController
  def index
    swipes = Swipe.where(participant_1_id: current_participant.id).or(Swipe.where(participant_2_id: current_participant.id))
    @matches = []
    swipes.each do |swipe|
      unless Match.where(swipe_id: swipe.id).empty?
        @matches << Match.where(swipe_id: swipe.id)[0]
      end
    end
    @event = Event.find(params[:id])
  end


  def popup
    @match = Match.find(params[:id])
    @event = current_event
  end

  def create
    @match = Match.new(match_params)
  end

  def show
    @match = Match.find(params[:id])
    @message = Message.new
  end

  private

  def match_params
    params.require(:match).permit(:swipe_id)
  end

  def current_event
    current_match = Match.find(params[:id])
    current_match.swipe.participant_1.event
  end

  def current_participant
    Participant.where(event_id: params[:id], user_id: current_user.id).first
  end
end
