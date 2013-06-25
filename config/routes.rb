HackerNewsRails::Application.routes.draw do
  root :to => "posts#index"

  resources :posts

  resources :users do
    resources :posts, :controller => "profiles"
    resources :comments 
  end

  match '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'

end
