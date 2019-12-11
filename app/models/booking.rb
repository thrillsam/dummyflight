# == Schema Information
#
# Table name: bookings
#
#  id           :bigint           not null, primary key
#  user_id      :integer
#  flight_id    :integer
#  flying_on    :date
#  pnr          :string
#  no_of_seats  :integer
#  seat_numbers :integer
#  category_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Booking < ApplicationRecord
	belongs_to :user
	belongs_to :flight
	belongs_to :category

	def generate_pnr(klass)
		DateTime.now.strftime('%Q').last(7) << klass
	end
end
