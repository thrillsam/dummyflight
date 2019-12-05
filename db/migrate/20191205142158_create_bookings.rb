class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :flight_id
      t.date :flying_on
      t.string :pnr
      t.integer :no_of_seats
      t.integer :seat_numbers
      t.integer :category_id

      t.timestamps
    end
  end
end
