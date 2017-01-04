class SessionsController < ApplicationController

	def new
	end

	def create

	end

	def destroy
	end
	

end




# class SessionsController < ApplicationController

# 	def new
# 	end

#   # "Create" a login, aka "log the user in"
#   def create
#     if user = User.authenticate(params[:username], params[:password])
#       # Save the user ID in the session so it can be used in subsequent requests
#       session[:current_user_id] = user.id
# 			flash.now[:notice] = "Welcome back, <%= user.name %>!"
#       redirect_to user
#     end
#   end

#   # "Delete" a login, aka "log the user out"
#   def destroy
#     # Remove the user id from the session
#     @current_user = session[:current_user_id] = nil
#     flash.now[:notice] = "You have successfully logged out."
#     redirect_to root_url
#   end
# end





# class SessionsController
#  #route for login form
#  def new
#  end

#  #processes data from login form
#  def create
#     @user = User.where(email: params[:email]).first
#     if @user && @user.password == params[:password]
#      session[:user_id] = @user.id
#       redirect_to home_path
#     end
#  end

#  #route for logging out a user
#  def destroy
#     session[:user_id] = nil
#     redirect_to home_path
#  end
# end


# class SessionsController
#  #route for login form
#  def new
#  end

#  #processes data from login form
#  def create
#     @user = User.where(email: params[:email]).first
#     if @user && @user.password == params[:password]
#      session[:user_id] = @user.id
#       redirect_to home_path
#     end
#  end

#  #route for logging out a user
#  def destroy
#     session[:user_id] = nil
#     redirect_to home_path
#  end
# end



# class SessionsController < ApplicationController
# 	def new
# 	end

# 	def create
# 		user = User.find_by(email: params[:session][:email].downcase)
# 	    if user && @user.authenticate(params[:session][:password])
# 	      # Find the user by their email. If that user exists and the password they enter matches the correct password in the database, log them in.
# 	      log_in user
# 	      redirect_to user

# 	      flash.now[:notice] = 'Welcome back!' 
# 	    else
# 	      flash.now[:alert] = 'Invalid email/password combination.'
# 	      render 'new'
# 		end
# 	end

# 	def destroy
# 		session[:user_id] = nil
# 	    redirect_to home_path
# 	end

# end