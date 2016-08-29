class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user, :set_user, :find_user
  before_action :authorize, except: [:home]


  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user ||=User.find(session[:user_id]) if logged_in?
  end
  def show
  end

  def index
  end

  def show
  end



   def set_user
     if logged_in?
       @user = User.find(params[:id])
     end
   end

   def find_user
     @user = User.find(session[:user_id])
   end

def authorize
   redirect_to root_path unless logged_in?
 end

end
