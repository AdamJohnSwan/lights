Rails.application.routes.draw do
  root 'overviews#index'

  get 'overviews/index'
  get 'overviews/login'
  
  post '/initiate', to: 'overviews#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
