class LoginController < ApplicationController
  layout 'login'
  skip_before_action :authenticate_user!

  def new
  end

  def create
  	user = AuthenticateUser.new(params[:email], params[:password]).call
  	if user.present?
      session[:user_id] = user.id
      redirect_to (user.is_admin? ? admin_dashboard_url : dashboard_url)
    else
      render 'new', status: :unauthorized
    end
  end

  def destroy
    destroy_session
    redirect_to home_url
  end

  private 
	  def login_params
	  	params.permit(:email, :password)
	  end

    def destroy_session
      session[:user_id] = nil
    end
end
