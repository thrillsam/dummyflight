# == Schema Information
#
# Table name: invoices
#
#  id           :bigint           not null, primary key
#  amount       :float
#  tax_amount   :float
#  total_amount :float
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
