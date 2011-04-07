class StatusesController < ApplicationController
  def new
    @status = Status.new
  end

  def create
    @status = Status.new(params[:status])

    if @status.save
      redirect_to statuses_path
    else
      render :new
    end
  end

  def index
    @statuses = Status.order("created_at DESC")
  end
end
