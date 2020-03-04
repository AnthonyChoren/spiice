class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create,:edit,:update, :destroy,] #destroy
  before_action :set_project, only: [:show, :edit, :update, :destroy,] #destroy

  def index
    @projects = Project.all.where(accepted: nil)
    if params[:query].present?
      @projects = @projects.search_project(params[:query])
    end
  end

  def show
  end

  # def new
  #   @project = Project.new
  # end

  # def create
  #   @project = Project.new(project_params)
  #   if @project.save
  #     redirect_to project(@project)
  # else
  #   render :new
  #   end
  # end

  # def edit
  # end

  # def update
  # end


  private

  def set_project
  @project = Project.find(params[:id])

  end

end
