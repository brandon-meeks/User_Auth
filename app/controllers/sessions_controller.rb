class SessionsController < ApplicationController
	before_action :current_user, :only => [:home, :profile, :settings]
    # before_action :authorize, :only => [:new, :login_attempt]

	def new
	end

	def create
		authorized_user = Person.find_by(email: params[:session][:email].downcase)
		# If the user exists AND the password entered is correct
		if authorized_user && authorized_user.authenticate(params[:session][:password])
			# Save the user id inside the browser cookie. This is how we keep the user
			# logged in when they navigate around the site.
			session[:user_id] = authorized_user.id
			flash[:success] = "Welcome back #{current_user.email}"
  			redirect_to '/'
  		else
  			# If the user's login doesn't work, send them back to the login form. 
  			flash[:danger] = "Invalid Username or Password"
  			redirect_to new_session_path
  		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to new_session_path
	end

end
