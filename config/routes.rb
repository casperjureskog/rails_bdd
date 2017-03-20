Rails.application.routes.draw do
  get 'landing/index'
  post '/articles' => 'articles#create'
  get '/articles/new' => 'articles#new', as: 'new_post'
  get '/articles/:id/show' => 'articles#show', as: 'new_show'
  post '/article/comments' => 'comment#create'
  resources :articles do
    resources :comment
  end
  root controller: :landing, action: :index
end
