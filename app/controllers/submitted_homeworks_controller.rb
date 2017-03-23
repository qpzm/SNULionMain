class SubmittedHomeworksController < ApplicationController
  def new
    @sHomework = SubmittedHomework.new(homework: Homework.find(params[:homework_id]))
  end

  def create
    if !current_admin.nil?
      puts "asdf"
      redirect_to etl_path
    else
      u = UploaderUploader.new
      @sHomework = SubmittedHomework.new(sHomework_params)
      @sHomework.homework_id = params[:homework_id]
      @sHomework.user_id = current_user.id
      if @sHomework.save
        u.store!(@sHomework[:img])
      else
        puts @sHomework.errors.inspect
      end
      redirect_to homework_path(params[:homework_id])
    end
  end

  def index
    @homework = Homework.find(params[:homework_id])
    @sHomeworks = @homework.submitted_homeworks
    puts @sHomeworks.inspect
  end

  def destroy
    @sHomework = SubmittedHomework.find(params[:id])
    @sHomework.destroy
    redirect_to etl_path
  end

  private
    def sHomework_params
      params.require(:submitted_homework).permit(:title, :img)
    end
end
