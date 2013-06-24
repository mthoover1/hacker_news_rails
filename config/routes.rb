HackerNewsRails::Application.routes.draw do

  root :to => "posts#index"

  resources :users
  resources :posts

  # in the posts_controller
  # def create
  #   find user
  #   user.posts.create(:title => , :content => )
  # end

end
