class FavoritesController < ApplicationController
  
  def index
    @favorites = current_user.favorites
  end

  def show
  end

  #Creating a new favorite anime for a specific user.
  def create
    if anime_id.favorite == true
      redirect_to root_path
    else
      @favorite = current_user.favorites.new(anime_id: params[:anime_id])
      if @favorite.save
        redirect_to root_path
      end
    end
    
  end

  def destroy
    @favorite = current_user.favorites.find_by(anime_id: params[:anime_id])
    favorite.destroy
    redirect_to root_path
  end
end
