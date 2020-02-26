
class Admin::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index

   # @projects = current_user.projects
  end
end
