class CreateServicePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :service_prices do |t|
      t.integer :basic_price
      t.integer :bussiness_price_in_percentage
      t.integer :first_class_price_in_percentage
      t.integer :flight_id

      t.timestamps
    end
  end
end
