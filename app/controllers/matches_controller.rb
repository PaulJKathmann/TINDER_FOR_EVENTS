class MatchesController < ApplicationController
  def index
   @matches = Match.all
  end

  def new
    @match = Match.new()
  end

  def create
    @match = Match.new(match_params)
  end

  private

  def match_params
    params.require(:match).permit(:swipe_id)
  end
end
