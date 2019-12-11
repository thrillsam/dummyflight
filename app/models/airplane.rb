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

class Airplane < ApplicationRecord
	belongs_to :airplane_type

	has_many :airplane_seat_configs
	has_many :seat_configs, through: :airplane_seat_configs
end
