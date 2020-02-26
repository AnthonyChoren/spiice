
class Admin::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @projects = Project.all
    # @projects = current_user.Project.all
    # @projects.user = current_user
  end

  def show
    # @project = Project.new
  end

  def new
    # @project = Project.new
  end

  def create
    # @project = Project.new
    # @project.save
    #   if @project.save
    #   redirect_to project_path
    # else
    #   render
  end

  def edit
  end

  def update
  end
end
