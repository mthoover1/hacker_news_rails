class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate(params[:username], params[:password])
    session[:id] = @user.id
    redirect_to @user if @user
  end
  
  def destroy
    session[:id] = nil
    redirect_to :root
  end 
end
