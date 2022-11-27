class CreateQuotationDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :quotation_details do |t|
      t.references :quotation, foreign_key: true
      t.references :good, foreign_key: true
      t.integer :quantity
      t.string :leadTime
      t.string :sellingUnit
      t.decimal :price, precision: 16, scale: 6
      t.decimal :discount, precision: 16, scale: 6

      t.timestamps
    end
  end
end
