class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  # before_action :set_notifications, if: :user_signed_in?

  # def set_notifications
  #   @notifications = Notification.where(recipient: current_user).recent
  # end

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :phone_number, :city, :country, :password, :role, :photo])

    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
