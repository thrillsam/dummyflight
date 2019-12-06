# == Schema Information
#
# Table name: flights
#
#  id             :bigint           not null, primary key
#  name           :string
#  origin_id      :integer
#  destination_id :integer
#  number         :string
#  airplane_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
