class LoginController < ApplicationController
  layout 'login'

  def new
  end

  def create
  	result = AuthenticateUser.new(params[:email], params[:password]).call
  	if result.present?
     redirect_to "/#{result}"
   else
     render 'new', status: :unauthorized
   end
  end

  def destroy
  end

  private 
	  def login_params
	  	params.permit(:email, :password)
	  end
end
