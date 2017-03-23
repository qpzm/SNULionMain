class HomeworksController < ApplicationController
  def index
  end
  def show
     @homework = Homework.find(params[:id])
  end
end
