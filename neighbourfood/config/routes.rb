Neighbourfood::Application.routes.draw do
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  resources :users, :meals
  # , except => [:edit] do
  #   collection do
  #     get 'edit'
  #   end
  # end
end
