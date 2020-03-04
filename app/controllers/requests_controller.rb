class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:edit, :update]

  def index
      if current_user.role == "client"
        @requests = current_user.propositions
        @requests.each do |request|
          request.update(visited: true)
        end
      else
        @requests = current_user.requests
        @requests.each do |request|
          request.update(seen: true)
        end
    end
    # @projects = @requests.project
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
      redirect_to requests_path, notice: 'Request was successfully created.'
    else
      render 'new'
    end
  end

  def edit
    set_request
  end

  def update
    set_request
    @project = @request.project
    @project.update(accepted: true)
    @request.update(status: 1, seen: false)
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

  def notification_accepted
    #as soon as request is accepted
      #a textfield is shown on dashboard of client
      #the project and a notification circle is shown on dashboard of designer
    #when you click on textfield you show the request and delete the textfield
    #when you click on the project you see the project and the notification circle will be delete
  end

  def notification_refused
    #??
  end

  def notification_new_request
  #as soon a new request is made
      #a textfield is shown on dashboard of client
  #when you click the on the textfield you see the request and the field will be deleted
  end

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

