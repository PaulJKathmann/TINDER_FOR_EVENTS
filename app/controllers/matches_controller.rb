class MatchesController < ApplicationController
  def index
    current_participant = Participant.where(user: current_user, event: params[:id]).first
    swipes = Swipe.where(participant_1_id: current_participant.id).or(Swipe.where(participant_2_id: current_participant.id))
    @matches = []
    swipes.each do |swipe|
      unless Match.where(swipe_id: swipe.id).empty?
        @matches << Match.where(swipe_id: swipe.id)[0]
      end
    end
  end

  def show
    @match = Match.find(params[:id])
  end
  
  def create
    @match = Match.new(match_params)
  end

  def show
    @match = Match.find(params[:match_id])
    @message = Message.new
  end

  private

  def match_params
    params.require(:match).permit(:swipe_id)
  end
end
