class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.participant = current_user
    if message.save
      # append message to match chat
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.author.user.name
      head :ok
    else
      redirect_to matches_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:content, :match_id)
    end
end
