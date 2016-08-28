class BrandsController < ApplicationController

  before_action :set_brand, only: [:show, :edit, :update, :destroy]
    def index
      @brands = Brand.all
    end

    def new
      @brand = Brand.new
    end

    def show
    end

    def create
      @brand = Brand.new(brand_params)
      # binding.pry
      if @brand.save
        redirect_to brands_path
      else
        render new_brand_path
      end
    end

    def edit
    end

    def update
      @brand.update(brand_params)
    end

    def destroy
      @brand.destroy
    end


    private

    def set_brand
      @brand = Brand.find(params[:id])
    end

    def brand_params
      params.require(:brand).permit(:category, :fabric, :color, :brand_id, :outfit_id, :user_id)
    end


end
