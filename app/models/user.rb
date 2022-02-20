class User < ApplicationRecord
  has_many :animes, through: :favorites
  has_many :favorites
  enum role: { admin: 0, otaku: 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
