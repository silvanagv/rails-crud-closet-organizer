class BrandsController < ApplicationController
  before_action :find_user

  before_action :set_brand, only: [:show, :edit, :update, :destroy]
    def index
      binding.pry
      @brands = @user.brands.uniq
    end

    def new
      @brand = Brand.new
    end

    def show
    end

    def create
      @brand = Brand.find_or_create_by(brand_params)
      # binding.pry
        redirect_to brands_path
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
      params.require(:brand).permit(:name)
    end


end
