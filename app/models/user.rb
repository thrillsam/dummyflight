# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  role            :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
	has_secure_password
	
	has_many :bookings
	has_many :flights, through: :bookings

	enum role: [:admin, :customer]

	def is_admin?
		self.role == 'admin'
	end

	def find_my_flights
		self.flights
	end
end
