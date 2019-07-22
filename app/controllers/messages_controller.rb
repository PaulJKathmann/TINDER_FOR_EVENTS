class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.author = current_user
    if @message.save
      respond_to do |format|
        format.html { redirect_to chat_path(params[:id], params[:match_id]) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "events/#{params[:id]}/matches/#{params[:match_id]}" }
        format.js
      end
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :match_id)
    end
end
