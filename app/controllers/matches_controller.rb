class MatchesController < ApplicationController
  def index
   @matches = Match.all
  end

  def new
    if Match.where(swipe_id: Match.last.swipe_id).empty?
      @match = Match.last
    else
      @match = Match.where(swipe_id: Match.last.swipe_id)[0]
    end
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
