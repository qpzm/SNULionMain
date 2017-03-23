class HomeworksController < ApplicationController
  before_action :authenticate_user!

  def index
  end
  def show
     @homework = Homework.find(params[:id])
  end
end
