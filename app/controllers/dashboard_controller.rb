class DashboardController < ApplicationController
  def index
  	@flights = current_user.find_my_flights
  end
end
