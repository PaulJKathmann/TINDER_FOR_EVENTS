class MessagesChannel < ApplicationCable::Channel
  def subscribed
    # heroku guide:
    # stream_from 'messages'
    # kitt guide:
    stream_from "match_#{params[:match_id]}"
  end
end
