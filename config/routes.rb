Rails.application.routes.draw do
  get 'article/index'
  get '/posts/new' => 'posts#new', as: 'new_post'
  # resources :posts
  # root 'posts#index'
  root controller: :article, action: :index

end
