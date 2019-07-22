class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.author = current_user
    if @message.save
      # append message to match chat
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
      # ActionCable.server.broadcast "match_#{params[:match_id]}",
      #   message: message.content,
      #   user: message.author.name
      # head :ok
      # redirect_to chat_path(message.match.swipe.event, message.match)
  end

  private

    def message_params
      params.require(:message).permit(:content, :match_id)
    end
end
