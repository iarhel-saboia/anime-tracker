class Anime < ApplicationRecord
  has_many :users, through: :favorite
  has_many :animes, through: :follow
  has_many :favorites
  has_many :follows
end
