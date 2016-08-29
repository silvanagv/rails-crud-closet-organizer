class UsersController < ApplicationController
before_action :set_user, only: [:edit, :update, :show, :destroy]
before_action :authorize, except: [:home, :new, :create]

  def home
  end

  def show

    if params[:id].to_i != session[:user_id]
      redirect_to root_path
    end
  end

  def new
    @user = User.new
  end

  def create
     @user = User.new(user_params)
     if @user.save
       # binding.pry
       session[:user_id] = @user.id
       redirect_to user_path(@user)
     else
       render :new
     end
   end

  def index
  end

  def destroy
    binding.pry
    @user.destroy
    reset_session
    redirect_to root_path
  end

private

 def user_params
   params.require(:user).permit(:name, :password)
 end

end
