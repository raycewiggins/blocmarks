Rails.application.routes.draw do
  devise_for :users
  get 'users/show'

  root 'welcome#index'
  get 'welcome/about'

  resources :topics do
    resources :bookmarks, except: :index
  end

  resources :bookmarks, only: [] do
    resources :likes, only: [:create, :destroy]
  end

  resources :likes, only: :index
end
