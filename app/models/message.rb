class Message < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :match
  after_create :broadcast_message

  def broadcast_message
    ActionCable.server.broadcast("match_#{match.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }
      ),
      current_user_id: author.id
    })
  end
end
