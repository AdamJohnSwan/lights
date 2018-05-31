Rails.application.routes.draw do
  root 'overviews#login'

  resources :files, only: [:index, :create, :new]

  get 'overviews/index'
  get '/login', to: 'overviews#login'
	get 'overviews/upload', to: 'overviews#upload'  
	post '/checkCreds', to: 'overviews#checkCreds'
  post '/initiate', to: 'overviews#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
