
class Admin::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_project, only: [:edit, :update, :destroy]
  def index
    @projects = Project.all.where(user: current_user).all.order("created_at DESC")
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save
      redirect_to project_path(@project), notice: 'Project was successfully created.'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    set_project
    @project.destroy
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :price, :start, :deadline)
  end
end
