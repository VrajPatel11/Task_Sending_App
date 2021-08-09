class StatusesController < ApplicationController

  def new
    @status = Status.new
    @tasks = @status.tasks.build
  end

  def index
    @statuses = Status.all
  end
  
  def show
    @status = Status.find(params[:id])
    @tasks = @status.tasks
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      flash[:notice] = 'Status Created Successfully!'
      redirect_to status_path(@status)
    else
      render 'new'
    end
  end
  
  def edit

  end

  def update

  end
  
  def destroy

  end

  private

  def set_status
    @status = Status.find(params[:id])
  end
  
  def status_params
    params.require(:status).permit(:date, %i[:id, :name, :pr, :hours, :_destroy])
  end
end