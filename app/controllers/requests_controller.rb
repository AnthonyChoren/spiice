class RequestController < ApplicationController
  def index
    @request = Request.all
  end

  def show
    @request = request.find(params[:id])
  end

  def new
    # @request = Request.new
  end

  def create
     # @request = Request.new
     # @request.save
    #   if @request.save
    #   redirect_to project_request
    # else
    #   render
  end

  def edit
  end

  def update
  end
end

