class AddAnimeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :anime, :string
  end
end
