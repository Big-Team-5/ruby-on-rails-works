Rails.application.routes.draw do
  #get 'page/index'
  root 'page#index'
  get  'page/residential'
  get  'page/commercial'
  get  'page/quote'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
