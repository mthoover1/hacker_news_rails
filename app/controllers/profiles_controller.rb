class ProfilesController < ApplicationController
  before_filter :find_user

  def index
    @posts = @user.posts
    render "posts/index"
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
