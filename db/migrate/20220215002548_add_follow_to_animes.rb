class AddFollowToAnimes < ActiveRecord::Migration[5.2]
  def change
    add_column :animes, :follow, :boolean
  end
end
