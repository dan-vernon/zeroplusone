Rails.application.routes.draw do

  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/create'
  get 'users/index'
  get 'users/show'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/update'
  get 'bookings/edit'
  get 'bookings/destroy'

  resources :users, only: [:show, :index]

  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
