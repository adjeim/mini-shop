class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.where(email: params[:email]).first
	    if @user && @user.password == params[:password]
	    	session[:user_id] = @user.id
	    	redirect_to @user
	    	flash[:notice] = "Welcome back, #{@user.fname}!"
    	else
    		redirect_to '/login'
			flash[:alert] = "Something doesn't sound right. Are you sure you have an account with us?"
	    end
	end

	def destroy
	    session[:user_id] = nil
	    redirect_to root_path
	    flash[:notice] = "You have successfully logged out."
	end
end