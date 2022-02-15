Rails.application.routes.draw do
  root to: "events#index"

  devise_for :users
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'

  resources :events
  resources :invitations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
