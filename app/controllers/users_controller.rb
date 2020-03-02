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
