Rails.application.routes.draw do

  mount ForestLiana::Engine => '/forest'
  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show, :index] do
    resources :reviews, only: [:create, :new, :index]
      resources :bookings
        resources :user_skills
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
