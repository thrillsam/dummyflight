class CreateAirplaneSeatConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :airplane_seat_configs do |t|
      t.integer :airplane_id
      t.integer :seat_config_id

      t.timestamps
    end
  end
end
