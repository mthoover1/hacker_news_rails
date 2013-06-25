class UsersCommentsController < ApplicationController
  before_filter :find_user

  def index
    @comments = @user.comments
    render "comments/index"
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
