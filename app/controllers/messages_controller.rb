class MessagesController < ApplicationController
  before_action :authenticate_any!

  def index
    # @messagesToday = Message.where('created_at >= ?', DateTime.now.beginning_of_day)
    @messagesToday = Message.all
  end
end
