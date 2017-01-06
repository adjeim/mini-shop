class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.where(email: params[:email]).first
	    if @user && @user.password == params[:password]
	    	session[:user_id] = @user.id
	    	redirect_to @user
	    	flash[:notice] = "Welcome back, #{@user.fname}!"
	    end
	end

	def destroy
	    session[:user_id] = nil
	    redirect_to root_path
	    flash[:notice] = "You have successfully logged out."
	end
end