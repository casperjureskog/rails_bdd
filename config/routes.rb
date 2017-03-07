Rails.application.routes.draw do
  get 'landing/index'
  post '/articles' => 'articles#create'
  get '/articles/new' => 'articles#new', as: 'new_post'

  resources :articles
  root controller: :landing, action: :index
  get '/landing/:id' => 'landing#show', as: 'post'
end
