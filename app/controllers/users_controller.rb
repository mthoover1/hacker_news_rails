class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def new
  end

  def create
    user = User.new(params[:user])
    redirect_to @user if @user.save
  end
  
  def show
    @user = User.find(params[:id])
  end 
end
