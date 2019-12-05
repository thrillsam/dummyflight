class CreateSeatConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :seat_configs do |t|
      t.integer :category_id
      t.integer :now_of_rows
      t.integer :no_of_seat_in_row

      t.timestamps
    end
  end
end
