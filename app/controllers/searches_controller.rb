class SearchesController < ApplicationController

  def index
    if params[:query].present?
     @users = User.search(params[:query])
     # redirect_to search_index_path
   else
     @users = User.all
   end
  end

end
