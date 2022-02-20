module FavoritesHelper
  def favorite_help1(anime)
    current_user.favorites.find_by(anime: anime)
  end
end
