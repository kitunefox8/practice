class ProductsController < ApplicationController


  def index
  end

  def new
    @product = Product.new
  end

  def show
  end

  def create
    @product = Product.new(create_params)
    # binding.pry
    if @product.save
      redirect_to new_product_path
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:product).permit(:name, :price, :description, :exposition, :category, :delivery_fee, :shipping_area, :shipping_days, :saller_id)
    # params.require(:product).permit(:name, :price, :description)
  end
end
