# == Schema Information
#
# Table name: service_prices
#
#  id                              :bigint           not null, primary key
#  basic_price                     :integer
#  bussiness_price_in_percentage   :integer
#  first_class_price_in_percentage :integer
#  flight_id                       :integer
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

require 'test_helper'

class ServicePriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
