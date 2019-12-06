# == Schema Information
#
# Table name: airplanes
#
#  id               :bigint           not null, primary key
#  name             :string
#  airplane_type_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class AirplaneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
