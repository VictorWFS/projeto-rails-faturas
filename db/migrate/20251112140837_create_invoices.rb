class CreateInvoices < ActiveRecord::Migration[8.1]
  def change
    create_table :invoices do |t|
      t.references :client, null: false, foreign_key: true
      t.date :due_date
      t.decimal :total_amount
      t.string :status

      t.timestamps
    end
  end
end
