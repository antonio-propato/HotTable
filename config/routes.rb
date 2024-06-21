# config/routes.rb
Rails.application.routes.draw do
  resources :restaurants do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :clients do
    resources :bookings, only: [:edit, :update, :destroy]
  end

  root "restaurants#index"
end
