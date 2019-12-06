# == Schema Information
#
# Table name: invoices
#
#  id           :bigint           not null, primary key
#  amount       :float
#  tax_amount   :float
#  total_amount :float
#  booking_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Invoice < ApplicationRecord
	belongs_to :booking
end
