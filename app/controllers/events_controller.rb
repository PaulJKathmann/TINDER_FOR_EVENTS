class EventsController < ApplicationController
  # Remove later, just necessary until log-in problem is gone
  skip_before_action :authenticate_user!, only: [:new, :create]

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
