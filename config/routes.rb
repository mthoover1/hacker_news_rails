HackerNewsRails::Application.routes.draw do
  root :to => "posts#index"

  resources :users do
    resources :posts, :controller => "users_posts"
    resources :comments, :controller => "users_comments"
  end

  match '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'

end
