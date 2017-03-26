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
  def admin
    ## 운영자라면
    if admin_signed_in?
      @weeks = Week.all
      @current_week = Week.current_week
    else
      redirect_to "/" 
    end
  end
end
