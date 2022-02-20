class FavoritesController < ApplicationController
  
  def index
    @favorites = current_user.favorites
    @follows = current_user.follows
  end

  def show
  end

  #Creating a new favorite anime for a specific user.
  def create
    @favorite = current_user.favorites.new(anime_id: params[:anime_id])
    @follow = current_user.follows.new(anime_id: params[:anime_id])
    @follow_ = current_user.follows.find_by(anime_id: params[:anime_id])
    
    case @follow_.present?
    when true
      @follow_.destroy
      @follow.save
      @favorite.save
      redirect_to root_path
    when false
      @favorite.save
      @follow.save
      redirect_to root_path
    end
      
  end

  def destroy
    @favorite = current_user.favorites.find_by(anime_id: params[:anime_id])
    @favorite.destroy
    redirect_to root_path
  end
end
