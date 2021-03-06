class OutfitsController < ApplicationController
before_action :find_user

  def index
    # binding.pry
    @outfits = @user.outfits.uniq
  end

  def new
    @outfit = Outfit.new
    @items = @user.items
    # binding.pry
  end

  def show
  end

  def create
    @items = @user.items
    @outfit = Outfit.new(outfit_params)
    if @outfit.save
      @user.outfits << @outfit
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

  def set_outfit
    @outfit = Outfit.find(params[:id])
  end

  def outfit_params
    params.require(:outfit).permit(:name, :season, :formality_level, :item_ids => [])
  end

end
