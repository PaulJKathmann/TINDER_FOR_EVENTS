class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.author = current_user

    if @message.save!
        ActionCable.server.broadcast("match_#{@message.match.id}", {
        message_partial: ApplicationController.renderer.render(
           partial: "messages/message",
           locals: { message: @message, user_is_messages_author: false, current_user: current_user } ),
        current_user_id: current_user.id
      })
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
