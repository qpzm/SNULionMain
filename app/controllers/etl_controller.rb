class EtlController < ApplicationController
  before_action :authenticate_any!
  def index
    @weeks = Week.all
    @current_week = Week.current_week
  end
  def homework
    @homeworks = Homework.all
  end
  def seminar
    @seminars = Seminar.all
  end

end
