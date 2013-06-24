class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def new
  end

  def create
    user = User.create_user(params[:user])
    session[:id] = user.id
  end
  
  def show
    @user = User.find(params[:id])
  end 
end
