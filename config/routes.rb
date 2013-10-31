Neighbourfood::Application.routes.draw do
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'
  get '/meals/:id/buy' => 'orders#new', :as => 'buy'
  post '/meals/:id/buy' => 'orders#create'
  get '/orders' => 'orders#index'
  get '/about' => 'pages#about', :as => 'about'

  resources :users, :meals, :orders
  # , except => [:edit] do
  #   collection do
  #     get 'edit'
  #   end
  # end
end
