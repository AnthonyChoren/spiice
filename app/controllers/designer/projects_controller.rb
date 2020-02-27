class Designer::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @projects = Project.all.where(user: current_user)
  end
end
