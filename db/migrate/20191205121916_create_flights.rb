class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :name
      t.integer :origin_id
      t.integer :destination_id
      t.string :number
      t.integer :airplane_id

      t.timestamps
    end
  end
end
