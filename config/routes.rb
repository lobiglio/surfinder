Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :schools, only: [ :index, :show] do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: :index
  resources :reviews, only: [ :new, :create]
  namespace :owner do
    resources :schools, only: [:show, :new, :create] do
      resources :packs, only: [:new, :create]

    end
  end
end
