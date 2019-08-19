Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :schools, only: [ :index, :show]
  resources :bookings, only: :index
  resources :packs do
    resources :bookings, only: [ :new, :create]
  end
  resources :reviews, only: [ :new, :create]
end
