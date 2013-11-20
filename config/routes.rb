Giftexchange2::Application.routes.draw do

  root to: "sessions#new"

  resources :members

  resources :users

  resources :sessions

  resources :exchanges

  get 'signup' => 'users#new'




end
