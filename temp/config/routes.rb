Rails.application.routes.draw do
  resources :controls
  resources :dirts
  resources :foods
  resources :quote_forms
  #get 'page/index'
  root 'page#index'
  get  'page/residential'
  get  'page/commercial'
  get  'page/quote'
  get  'quote_forms/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
