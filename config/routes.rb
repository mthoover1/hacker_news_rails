HackerNewsRails::Application.routes.draw do
  root :to => "posts_controller#index"

  resources :posts

  # in the posts_controller
  # def create
  #   find user
  #   user.posts.create(:title => , :content => )
  # end
end
