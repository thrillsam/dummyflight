class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.float :amount
      t.float :tax_amount
      t.float :total_amount
      t.integer :booking_id

      t.timestamps
    end
  end
end
