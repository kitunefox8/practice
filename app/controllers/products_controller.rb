class ProductsController < ApplicationController


  def index
    @product = Product.all.order("id DESC")
  end

  def new
    @product = Product.new
    @product.build_category
    @product.build_status
    @product.build_brand
  end

  def show
    @product = Product.find(params[:id])  
    @category = Category.find(params[:id])  
    @status = Status.find(params[:id])  
    @brand = Brand.find(params[:id])  
  end
  def buy
    @product = Product.find(params[:id])  
  end
  def create
    @product = Product.new(create_params)
    # @product.build_category(create_params[:category_attributes])
    # binding.pry
    if @product.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:product).permit(
      :image, :name, :price, :delivery, :description, :exposition, :delivery_fee, :shipping_area, :shipping_days, :saller_id,
      category_attributes: [:id, :name],
      status_attributes: [:id, :name],
      brand_attributes: [:id, :name]
    )
    # params.require(:product).permit(:name, :price, :description)
  end
  # def category_params
  #   params.require(:category).permit(:name)
  # end
end
