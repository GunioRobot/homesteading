class StatusesController < ApplicationController
  def new
    @status = Status.new
  end
  
  def create
    Status.create!(params[:status])
    redirect_to statuses_path
  end
  
  def index
    
  end
end