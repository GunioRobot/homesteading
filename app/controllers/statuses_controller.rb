class StatusesController < ApplicationController
  def new
    @status = Status.new
  end
end