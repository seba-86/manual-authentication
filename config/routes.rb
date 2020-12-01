Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :stories
  get 'user/:id', to:'users#profile', as: 'profile'
  root 'stories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
