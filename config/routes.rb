Rails.application.routes.draw do

  devise_for :users
  resources :plays do
    get "bookmarks/toggle"
    resources :reviews
  end
  root 'plays#index'
  resources :bookmarks, only: [:index]
end

