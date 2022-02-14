Rails.application.routes.draw do
  resources :invitations
  devise_for :users
  resources :users
  root to: "events#index"

  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
