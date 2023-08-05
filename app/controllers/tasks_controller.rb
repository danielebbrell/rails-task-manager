class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Tasks.all
end

  def show
end

  def new
    @tasks.new
  end

  def create
    @tasks = Task.new(task_params)
    task.save
    redirect_to tasks_path
  end

  def set_task
    @task = Task.find(params[:id])
  end
end

private

def tasks_params
  params.require[:task].permit[:title, :details, :completed]
end
