
class Admin::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update]
  # TO DO: only: :index (nothing else !!!!!!)
  before_action :set_project, only: [:edit, :update]
  def index
    @projects = Project.all
    # @projects = current_user.Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    raise
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
    # @project = Project.find(params[:id])
  end

  def update
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :price, :start, :deadline)
  end
end
