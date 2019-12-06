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

class Flight < ApplicationRecord
	belongs_to :airplane
	belongs_to :origin, class_name: 'City', foreign_key: 'origin_id'
	belongs_to :destination, class_name: 'City', foreign_key: 'destination_id'
end
