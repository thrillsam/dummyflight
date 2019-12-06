# == Schema Information
#
# Table name: taxes
#
#  id         :bigint           not null, primary key
#  name       :string
#  percentage :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TaxTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
