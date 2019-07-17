class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @project = Event.new()
  end

  def create
    @project = Event.new(event_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_date, :end_date, :primary_color, :secondary_color, :logo, :background_image, :welcome_message)
  end
end
