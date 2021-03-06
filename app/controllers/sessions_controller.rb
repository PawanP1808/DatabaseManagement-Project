class SessionsController < ApplicationController
  def new
      render :layout => false
  end

  def show

  end
# handle login info from login page
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:error] = 'Invalid email/password combination'

       redirect_to '/sessions/new',notice: "Invalid email/password combination"
    end

  end
  # logout and end seesion
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
