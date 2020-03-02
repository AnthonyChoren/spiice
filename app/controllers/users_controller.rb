require 'rest-client'

class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.where(role: 1)
  end

  def show
    response = RestClient.get("https://api.dribbble.com/v2/user/shots?access_token=fbc119962ca8b45049e480a023d0909f11d17e8bd335a1a7100fc8a87a2f4c08")
    @repos = JSON.parse(response)

  end

  def fetch_dribbble
    response = RestClient.get("https://api.dribbble.com/v2/user/shots?access_token=fbc119962ca8b45049e480a023d0909f11d17e8bd335a1a7100fc8a87a2f4c08")
    @repos = JSON.parse(response)
  end

 private

 def set_user
  @user = User.find(params[:id])
 end

end
