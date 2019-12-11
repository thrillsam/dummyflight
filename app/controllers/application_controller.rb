class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	include Consul::Controller

	current_power do
	  Power.new(current_user)
	end

	def authenticate_user!
		redirect_to home_url unless current_user
	end

	def current_user
		User.find_by(id: session[:user_id])
	end

	def find_layout
		current_user.is_admin? ? 'admin_dashboard' : 'application'
	end

	helper_method :current_user
end

