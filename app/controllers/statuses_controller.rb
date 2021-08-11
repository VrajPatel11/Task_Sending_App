# frozen_string_literal: true

class StatusesController < ApplicationController
  before_action :set_status, only: %i[show edit update destroy]

  def new
    @status = Status.new
    @tasks = @status.tasks.build
  end

  def index
    @statuses = Status.paginate(page: params[:page], per_page: 5)
  end

  def show
    @tasks = @status.tasks
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      StatusMailer.with(status: @status).new_status_email.deliver_later
      flash[:notice] = 'Status Created Successfully!'
      redirect_to @status
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @status.update(status_params)
      flash[:notice] = 'Status Updated Successfully'
      redirect_to @status
    else
      render 'edit'
    end
  end

  def destroy
    @status.destroy
    flash[:alert] = 'Status deleted successfully '
    redirect_to root_path
  end

  private

  def set_status
    @status = Status.find(params[:id])
  end

  def status_params
    params.require(:status).permit(:date, tasks_attributes: %i[id name pr hours _destroy])
  end
end
