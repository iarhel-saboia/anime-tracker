class Anime < ApplicationRecord
  paginates_per 5
  has_many :users, through: :favorite
  has_many :animes, through: :follow
  has_many :favorites
  has_many :follows
end
