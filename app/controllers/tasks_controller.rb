class TasksController < ApplicationController
  
  def index
    @tasks = Task.all  
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(params.require(:task).permit(:date, :title, :pr, :hours))
    if @task.save
      flash[:notice] = "Tasks were successfully submitted!"
      redirect_to tasks_path
    else
      render 'new'
    end
  end
end
    