class MessagesController < ApplicationController
  before_action :authenticate_any!

  def index
    @messagesToday = Message.where('created_at >= ?', Date.today)
  end
end
