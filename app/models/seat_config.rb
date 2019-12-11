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

class SeatConfig < ApplicationRecord
	belongs_to :category
	
	has_many :airplane_seat_configs
	has_many :airplanes, through: :airplane_seat_configs

	class << self
		def find_by_klass(klass)
			find_by(category_id: Category.starts_with(klass)&.id)
		end
	end
end
