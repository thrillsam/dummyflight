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

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
