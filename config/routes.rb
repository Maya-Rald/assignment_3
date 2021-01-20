Rails.application.routes.draw do

  get 'homes/index'
  get 'home/about' => 'homes#about'

  # get 'users/show'
  # get 'users/index'
  root to: 'homes#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]

end
