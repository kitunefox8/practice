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

  def buyer
    @product = Product.find(params[:id])
    if @product.update(buyer: 1)
      redirect_to action: :index
    else
    redirect_to action: :index
    end
  end

  def create
    @product = Product.new(create_params)
    # @product.build_category(create_params[:category_attributes])
    
    if @product.save
      redirect_to action: :index
    else
      render :new
    end
  end
  def edit
    @product = Product.find(params[:id])  
    @category = Category.find(params[:id])    
    @status = Status.find(params[:id])  
    @brand = Brand.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])  
    @category = Category.find(params[:id])    
    @status = Status.find(params[:id])  
    @brand = Brand.find(params[:id])
    if @product.update(update_params) 
      # && @category.update(category_params) && @status.update(status_params) && @brand.update(brand_params)
      redirect_to action: :index
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])  
    @category = Category.find(params[:id])    
    @status = Status.find(params[:id])  
    @brand = Brand.find(params[:id])
    if @product.destroy && @category.destroy && @status.destroy && @brand.destroy
      redirect_to action: :index
    end
  end
  


  private 
  def create_params
    params.require(:product).permit(
      :image, :name, :price, :delivery, :description,  :delivery_fee, :shipping_area, :shipping_days, :buyer,
      category_attributes: [:id, :name],
      status_attributes: [:id, :name],
      brand_attributes: [:id, :name]
    )
    # params.require(:product).permit(:name, :price, :description)
  end
  
  def update_params
    params.require(:product).permit(
      :image, :name, :price, :delivery, :description,  :delivery_fee, :shipping_area, :shipping_days,
      category_attributes: [:id, :name],
      status_attributes: [:id, :name],
      brand_attributes: [:id, :name,]) 
  end

end