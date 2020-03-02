class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:edit, :update]

  def index

    if current_user.role == "client"
      @requests = current_user.propositions
    else
      @requests = current_user.requests
    end
    #@projects = @requests.project
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    if current_user.role == "designer"
    @request = Request.new
    else
      redirect_to projects_path
    end
  end

  def create
    @request = Request.new(request_params)
    @request.project = Project.find(params[:project_id])
    @request.user = current_user
    if @request.save
      redirect_to requests_path
    else
      render 'new'
    end
  end

  def edit
    set_request
  end

  def update
    set_request
    @request.update(status: 1)
    @request.project.requests.where(status: 0).each do |request|
      request.update(status: 2)
    end
    redirect_to requests_path
  end

    def refuse
      @request = Request.find(params[:request_id])
      @request.update(status: 2)
      redirect_to requests_path
    end

  # def print_accepted
  #   request = Request.find(params[:id])
  #   status = @request.status
  #   accepted = status == 1 ? " [x]" : "[ ]"
  # end

  def destroy
    set_request
    @request.destroy
    redirect_to requests_path
  end



  private
  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:message, :status)
  end
end

