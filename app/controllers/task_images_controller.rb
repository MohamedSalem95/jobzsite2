class TaskImagesController < ApplicationController
  before_action :authenticate_user!

  def new
    @task_image = TaskImage.new
    @task = Task.find(params[:task_id])
  end

  def create
    @task_image = TaskImage.new(task_image_params)
    @task = Task.find(params[:task_id])
    @task_image.task = @task
    if @task_image.save
      flash[:notice] = ''
      redirect_to @task
    else
      render :new
    end

  end

  private
  def task_image_params
    params.require(:task_image).permit([:image, :caption])
  end
end
