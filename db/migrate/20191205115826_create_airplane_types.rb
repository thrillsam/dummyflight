class CreateAirplaneTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplane_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
