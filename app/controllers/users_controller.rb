class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_save :encrypt_password
  # after_create :create_user_order_and_wishlist

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user

      Wishlist.create(user_id: @user.id, name: "#{@user.fname}'s Wishlist")
      Order.create(user_id: @user.id)

    else
      flash[:notice] = "Error saving user!"
      render new_user_path
    end

  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    session[:user_id] = nil
    redirect_to '/'
    flash[:notice] = "You have successfully deleted your account."
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :address, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  # def create_user_order_and_wishlist
  #   Wishlist.create(user_id: @user.id, name: "#{@user.fname}'s Wishlist")
  #   Order.create(user_id: @user.id)
  # end

end
