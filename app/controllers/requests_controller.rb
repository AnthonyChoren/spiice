class RequestController < ApplicationController
  def index
    @request = Request.all
  end

  def show
    @request = request.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
