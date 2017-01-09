module ApplicationHelper
	def current_user
		# return nil
		User.find(session[:user_id]) if session[:user_id]

	end
end
