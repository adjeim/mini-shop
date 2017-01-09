class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    # @products = Product.all

     @products = Product.search(params[:search])


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

  # def search
  #   # if search(params :search) 
      
  #   # end
  # end

  private

  def product_params
    params.require(:product).permit(:name, :price, :number_avail)
  end

  def set_product
    @product = Product.find(params[:id])
  end
  
end