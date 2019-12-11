# == Schema Information
#
# Table name: aireplane_seat_configs
#
#  id             :bigint           not null, primary key
#  airplane_id    :integer
#  seat_config_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class AirplaneSeatConfig < ApplicationRecord
	belongs_to :airplane
	belongs_to :seat_config
end
