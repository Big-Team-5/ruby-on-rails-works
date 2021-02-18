Rails.application.routes.draw do
  resources :employees
  devise_for :users
  root 'page#index'
  get  'page/residential'
  get  'page/commercial'
  get  'page/quote'
  get  'sessions/login'
  get  'users/new'
  resources :users, only: [:new, :create]
  # get 'login', to: 'sessions#new'
  # post 'login', to: 'sessions#create'
  # get 'welcome', to: 'sessions#welcome'
  # get 'authorized', to: 'sessions#page_requires_login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
