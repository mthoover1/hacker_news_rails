class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      puts "ahhhhhhhhhhhhhhhhhh!!!!!!!!!"
      session[:user_id] = user.id
      redirect_to :root, notice: "Logged In!"
    else
      flash.now.alert = "Email or password is invalid"
    end

    # @user = User.authenticate(params[:username], params[:password])
    # session[:user_id] = @user.id
    # redirect_to @user if @user
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to :root
  end 
end
