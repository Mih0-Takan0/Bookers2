Rails.application.routes.draw do

  root 'home#top'
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books

  resources :users, only: [:show, :edit, :index, :update]

  get "home/top" => "home#top"
  get "home/about" => "home#about"

end
