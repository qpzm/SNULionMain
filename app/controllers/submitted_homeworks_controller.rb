class SubmittedHomeworksController < ApplicationController
  def new
    @sHomework = SubmittedHomework.new
  end

  def create
    u = UploaderUploader.new
    @sHomework = SubmittedHomework.new(sHomework_params)
    if @sHomework.save
      puts "11111"
      u.store!(@sHomework[:img])
    else
      puts "22222"
      puts @sHomework.errors.inspect
    end
    redirect_back(fallback_location: :root)
  end

  private
    def sHomework_params
      params.require(:submitted_homework).permit(:title, :img)
    end
end
