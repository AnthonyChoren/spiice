class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user.present?
      if current_user.role == "client"
        redirect_to admin_projects_path
      else
        redirect_to designer_projects_path
      end
    end
  end
end
