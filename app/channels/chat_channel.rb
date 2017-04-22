class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak (data)
    if data['message'].present?
      m = Message.create(user_or_admin_id: current_user[:user]["id"], user_or_admin_type: current_user[:type], content: data['message'])
      ActionCable.server.broadcast('messages', message: render_message(m))
    end
  end

  private

    def render_message(message)
      ApplicationController.render(partial: 'messages/message', locals: { m: message })
    end
end
