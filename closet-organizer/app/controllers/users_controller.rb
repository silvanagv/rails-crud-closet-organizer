class UsersController < ApplicationController

before_action :set_user, only: [:edit, :update, :show]
before_action :authorize, except: [:home, :new]

  def home
  end

  def new
    @user = User.new
  end

  def create
    binding.pry
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



private

 def set_user
   @user = User.find(params[:id])
 end

 def user_params
   params.require(:user).permit(:name, :password)
 end

end
