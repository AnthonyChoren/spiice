
class Admin::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create, :edit, :update]
  # TO DO: only: :index (nothing else !!!!!!)
  def index
    @projects = Project.all
    # @projects = current_user.Project.all
    # @projects.user = current_user
  end

  def new
    @project = Project.new
  end

  # def create
  #   @project = Project.new
  #   @project.save
  #     if @project.save
  #     redirect_to project_path
  #   else
  #     render
  #   end
  # end

  def edit
  end

  def update
  end
end
