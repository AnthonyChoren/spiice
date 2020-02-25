
class Admin::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index

    # Let's anticipate on next week (with login)
    # @projects = current_user.projects
  end
end
