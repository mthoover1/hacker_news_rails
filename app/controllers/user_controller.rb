class UserController < ApplicationController
  def index
    @user = User.new
  end

  def show
  end 
end
