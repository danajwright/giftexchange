Giftexchange2::Application.routes.draw do

  root to: 'sessions#new'

  resources :members

  resources :participants

  resources :hats

  post '/members/:permalink' => 'members#update'

  resources :users

  resources :sessions

  resources :exchanges

  get 'signup' => 'users#new'

  get 'logout' => 'sessions#destroy', :as => 'logout'

  # post '/members/:id' => 'members#update'

  get 'members/link/:permalink' => 'members#link#permalink'

end