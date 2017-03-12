Rails.application.routes.draw do
  get 'landing/index'
  post '/articles' => 'articles#create'
  get '/articles/new' => 'articles#new', as: 'new_post'

  resources :articles do
    resources :comment
  end
  root controller: :landing, action: :index
  get '/articles/comment/:id' => 'comment#show', as: 'post'
end
