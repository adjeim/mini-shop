class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
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
  end

  def destroy
  end

  private
  
  def product_params
    params.require(:product).permit(:name, :price, :number_avail)
  end
end
