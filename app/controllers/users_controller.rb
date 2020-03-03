require 'rest-client'

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    if params[:query].present?
     @users = User.search(params[:query])
     # redirect_to search_index_path
   else
     @users = User.where(role: 1)
   end
  end

  def show
    response = RestClient.get("https://api.dribbble.com/v2/user/shots?access_token=fbc119962ca8b45049e480a023d0909f11d17e8bd335a1a7100fc8a87a2f4c08")
    @repos = JSON.parse(response)

  end

  def fetch_dribbble
    response = RestClient.get("https://api.dribbble.com/v2/user/shots?access_token=fbc119962ca8b45049e480a023d0909f11d17e8bd335a1a7100fc8a87a2f4c08")
    @repos = JSON.parse(response)
  end

  def edit
  end

  def update
      if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

 private

 def set_user
  @user = User.find(params[:id])
 end

 def user_params
  params.require(:user).permit(:first_name, :last_name, :phone_number, :company, :city, :country, :role, :bio, :country_code, :state_code)
 end

end
