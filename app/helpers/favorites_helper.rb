module FavoritesHelper
  def favorite_help1(anime)
    current_user.favorites.find_by(anime_id:anime.id)
  end
end
