class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")
    end
  end


  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to @product
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to @product
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end
  

  private

  def product_params
    params.require(:product).permit(:name, :price, :number_avail)
  end

  def set_product
    @product = Product.find(params[:id])
  end
  
end