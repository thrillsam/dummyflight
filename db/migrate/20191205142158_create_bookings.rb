class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :flight_id
      t.date :flying_on
      t.string :pnr
      t.integer :parent_id
      t.integer :seat_number
      t.integer :category_id

      t.timestamps
    end
  end
end
