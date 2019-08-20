Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :schools, only: [ :index, :show] do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: :index do
    resources :reviews, only: [ :new, :create]
  end
end
