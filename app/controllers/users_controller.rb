class UsersController < ApplicationController
  before_action :set_user, only: [:user]

  def index
    @users = User.where(role: 1)
  end

  def show
  end

 private

 def set_user
  @user = User.find(params[:id])
 end



end
