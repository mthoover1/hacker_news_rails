class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

    @user = User.new(params[:user])
    p @user.inspect
    session[:user_id] = @user.id
    redirect_to "http://www.google.com" #@user if @user.save
  end
  
  def show
    @user = User.find(params[:id])
  end 
end
