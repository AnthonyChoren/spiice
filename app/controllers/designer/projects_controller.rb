class Designer::ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @requests = current_user.requests
    @projects = current_user.applies.where(accepted: true)
  end
end
