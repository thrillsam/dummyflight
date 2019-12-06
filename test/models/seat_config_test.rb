# == Schema Information
#
# Table name: seat_configs
#
#  id                :bigint           not null, primary key
#  category_id       :integer
#  now_of_rows       :integer
#  no_of_seat_in_row :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class SeatConfigTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
