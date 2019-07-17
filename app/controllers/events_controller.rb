class EventsController < ApplicationController
  def new
    @event = Event.new()
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to project_path(@event)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :primary_color, :secondary_color, :logo, :background_image, :welcome_message)
  end
end
