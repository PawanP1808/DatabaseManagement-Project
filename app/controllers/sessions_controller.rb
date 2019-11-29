class SessionsController < ApplicationController
  def new
      render :layout => false
  end

  def show
    
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:error] = 'Invalid email/password combination'
       render 'new'
    end

  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
