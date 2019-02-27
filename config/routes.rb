Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show, :index] do
    resources :reviews, only: [:create, :new, :index]
    resources :user_skills
  end

  get 'users/index'
  get 'users/show'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/update'
  get 'bookings/edit'
  get 'bookings/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
