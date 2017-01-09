class OrdersController < ApplicationController

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def show
    @total_price = 0
    @order.products.each do |product|
      @total_price += product.price
    end

    @item_quantity = @order.products.length
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    redirect_to @order
  end

  def edit
  end

  def update
    @order.update(order_params)
    redirect_to @order
  end

  def destroy
    @order.destroy
    redirect_to '/'
  end

  def add_to_order
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id]) 
    @user.order.products.push(@product)
    redirect_to @user.order
  end

  def remove_from_order
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id]) 
    @user.order.products.delete(@product)
    redirect_to @user.order
  end

  def remove_all_products_from_order
    @user = User.find(session[:user_id])
    @user.order.products = []
    redirect_to @user.order
  end

  private

  def order_params
    params.require(:order).permit(:user_id)
  end

  def set_order
    @order = Order.find(params[:id])
  end

end



