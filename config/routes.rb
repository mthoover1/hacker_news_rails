HackerNewsRails::Application.routes.draw do
  root :to => "posts#index"

  resources :users
  resources :posts
  match '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'
end
