class TasksController < ApplicationController
  before_action :require_login
  before_action :set_task, only: [:destroy, :complete]
  
  def index
    @tasks = current_user.tasks.where(completed: false)
  end
  

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: 'Task was successfully deleted.'
  end

  def complete
    @task.update(completed: true)
    redirect_to tasks_path, notice: 'Task was successfully marked as complete.'
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :completed)
  end
end
