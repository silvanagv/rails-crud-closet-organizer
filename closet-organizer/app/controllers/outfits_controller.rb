class OutfitsController < ApplicationController
before_action :set_user

  def index
    # binding.pry
    @outfits = @user.outfits
  end

  def new
    @outfit = Outfit.new
  end

  def show
  end

  def create
    @outfit = Outfit.new(outfit_params)
    # binding.pry
    if @outfit.save
      @user.outfits << @outfit
      # binding.pry
      redirect_to outfits_path
    else
      render new_outfit_path
    end
  end

  def edit
  end

  def update
    @outfit.update(outfit_params)
  end

  def destroy
    @outfit.destroy
  end


  private

  def set_user
    @user = User.find(session[:user_id])
  end

  def set_outfit
    @outfit = Outfit.find(params[:id])
  end

  def outfit_params
    params.require(:outfit).permit(:name, :season, :formality_level, :item_ids)
  end

end
