class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create,:edit,:update] #destroy
  before_action :set_project, only: [:show, :edit, :update] #destroy
  def index
    @projects = Project.all
  end

  def show
    @project = Project.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_project
  @project = Project.find(params[:id])
  end

end
