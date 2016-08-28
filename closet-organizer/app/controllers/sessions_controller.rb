class SessionsController < ApplicationController
before_action :authorize, except: [:new, :create]


  def new
    @user = User.new
  end

  def create
      # binding.pry
    user = User.find_by(name: user_params[:name])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
