class ItemsController < ApplicationController
before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
  end

  def create
    @item = Item.new(item_params)
    # binding.pry
    if @item.save
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
  end


  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:category, :fabric, :color, :brand_id, :outfit_id, :user_id)
  end

end
