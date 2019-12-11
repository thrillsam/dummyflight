# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
	has_many :seat_configs

	class << self
		def starts_with(klass)
			where("name LIKE ?", "#{klass}%").last
		end
	end
end
