Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :schools, only: [ :index, :show] do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: :index do
    resources :reviews, only: [ :new, :create]
  end
  resources :reviews do
    resources :answers, only: [ :index, :new, :create ]
  end
  namespace :owner do
    resources :schools, only: [:show, :new, :create, :edit, :update] do
      resources :packs, only: [:new, :create, :edit, :update]
    end
  end
  namespace :owner do
    resources :bookings, only: [:index, :update]
  end
end
