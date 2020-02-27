class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:edit, :update]

  def index
    if current_user.role == "client"
      @requests = current_user.propositions
    else
      @requests = current_user.requests
    end
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
  end

  def update
  end


  private
  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:message)
  end
end

