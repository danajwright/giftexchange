Giftexchange2::Application.routes.draw do

  root to: "sessions#new"

  resources :members

  post '/members/:id' => 'members#update'

  resources :users

  resources :sessions

  resources :exchanges

  get 'signup' => 'users#new'

  get "logout" => "sessions#destroy", :as => "logout"
  # match '/:permalink' => 'members#permalink'

end