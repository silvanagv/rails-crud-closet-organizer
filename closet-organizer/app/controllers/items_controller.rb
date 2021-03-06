class ItemsController < ApplicationController
before_action :set_item, only: [:show, :edit, :update, :destroy]
before_action :find_user

  def index
    @items = @user.items
  end

  def new
    @item = Item.new
  end

  def show
  end

  def create

    @item = Item.new(item_params)
    if @item.save
      @user.items << @item
      redirect_to items_path
    else
      render new_item_path
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end


  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:image, :category, :fabric, :color, :brand_id, :outfit_id, :user_id, brand_attributes:[:name])
  end

end
