class WishlistsController < ApplicationController

  before_action :set_wishlist, only: [:show, :edit, :update, :destroy]

  def index
    @wishlists = Wishlist.all
  end

  def show
  end

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = Wishlist.create(wishlist_params)
    redirect_to @wishlist
  end

  def edit
  end

  def update
    @wishlist.update(wishlist_params)
    redirect_to @wishlist
  end

  def destroy
    @wishlist.destroy
    redirect_to '/'
  end

  def add_to_wishlist
    # @wishlist = Wishlist.find(params[:id])
    @user = User.find(session[:user_id])


    # @products = @wishlist.products
    @product = Product.find(params[:product_id]) 
    #find the product

    @user.wishlist.products.push(@product)
    #add the product to the order (???) 

    redirect_to @user.wishlist
  end

  # def add_to_wishlist
  # end

  # def remove_from_wishlist
  # end

  private

  def wishlist_params
    params.require(:wishlist).permit(:user_id, :name)
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

end