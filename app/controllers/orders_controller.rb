class OrdersController < ApplicationController

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def show
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

  private

  def order_params
    params.require(:order).permit(:user_id)
  end

  def set_order
    @order = Order.find(params[:id])
  end

end