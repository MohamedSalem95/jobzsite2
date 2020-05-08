class TasksController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      flash['notice'] = 'تم الحفظ بنجاح'
      redirect_to task_path(@task)
    else
      render :new
    end
  end


  private
  def task_params
    params.require(:task).permit(:name, :description, :url, :company)
  end

end
