class MatchesController < ApplicationController
  def index
   @matches = Match.all
  end

  def match
    #set the swipe
    # @swipe = Swipe.find(:params) #chech the params
    # check the swipe
    #if @swipe.participant_2_liked && @swipe.participant_1_liked
      # redirect_to happy for ever page MATCH!!
    #end
  end





end
