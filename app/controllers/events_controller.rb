class EventsController < ApplicationController
  def index
    @events = Event.where(user: current_user)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @project = Event.new()
  end

  def create
    @project = Event.new(event_params)
    @project.user = current_user
    if @project.save
      redirect_to event_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Event.find(params[:id])
  end

  def update
    @project = Event.find(params[:id])
    @project.update(event_params)
    redirect_to event_path(@project)
  end

  def available_events
    #this logic can be changed so that it only shows the events that
    #
    @events = Event.all

  end

  private

  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :primary_color, :secondary_color, :logo, :logo_cache, :background_image, :background_image_cache, :welcome_message)
  end
end
