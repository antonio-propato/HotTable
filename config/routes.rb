Rails.application.routes.draw do
  resources :restaurants do
    resources :bookings
    resources :tables
    resources :time_slots
  end

  resources :clients do
    resources :bids
  end

  resources :bids
  resources :bookings
  resources :tables

  root "restaurants#index"
end
