module FollowsHelper
  def follow_help1(anime)
    current_user.follows.find_by(anime: anime)
  end
end
