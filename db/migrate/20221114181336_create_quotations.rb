class CreateQuotations < ActiveRecord::Migration[7.0]
  def change
    create_table :quotations do |t|
      t.string :code
      t.date :quotationDate
      t.date :expirationDate
      t.string :terms
      t.string :deliveryTerm
      t.string :minimumOrder
      t.string :leadTime
      t.references :customer, foreign_key: true
      t.references :consultant, foreign_key: true

      t.timestamps
    end
  end
end
