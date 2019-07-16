class EventsController < ApplicationController
  def show
    @event = Event.find(:id)
    authorize @event
  end
end
