Rails.application.routes.draw do
  resources :employees
  devise_for :users
  root 'page#index'
  get  'page/residential'
  get  'page/commercial'
  get  'page/quote'

end
