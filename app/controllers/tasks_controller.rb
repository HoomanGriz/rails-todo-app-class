class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def show
    @task = Task.find(:id)
  end

  def new

  end

  def create
    Task.create!(task_params)
    redirect_to root_url
  end

  def destroy
  end

private

  def task_params
    params.require(:task).permit(:title)
  end

end

