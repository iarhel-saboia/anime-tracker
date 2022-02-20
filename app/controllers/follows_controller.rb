class FollowsController < ApplicationController
  
  def index
    @follows = current_user.follows
  end

  def show
  end

  #Creating a new favorite anime for a specific user.
  def create
    @follow = current_user.follows.new(anime_id: params[:anime_id])
    if @follow.save
      redirect_to root_path
    end 
  end

  def destroy
    @follow = current_user.follows.find_by(anime_id: params[:anime_id])
    @favorite = current_user.favorites.find_by(anime_id: params[:anime_id])
    if @follow.destroy && @favorite.present?
      @follow.destroy
      @favorite.destroy
      redirect_to root_path
    else
      @follow.destroy
      redirect_to root_path
    end
  end
  
end
