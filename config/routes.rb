Rails.application.routes.draw do
  get 'users/index'
  root "animes#index"
  devise_for :users 
  resources :animes do
    resources :favorites
    resources :follows
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html