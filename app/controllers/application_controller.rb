class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :back_Home
  helper_method :home_dir

# checks seesion of user during login
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def back_Home
    redirect_to '/login'

    # Lots of stuff
  end

  def home_dir
    redirect_to root_url

    # Lots of stuff
  end


end
