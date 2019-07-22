class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.author = current_user
    if message.save
      # append message to match chat
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.author.name
      # head :ok
      redirect_to chat_path(message.match.swipe.event, message.match)
    else
      redirect_to matches_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :match_id)
    end
end
