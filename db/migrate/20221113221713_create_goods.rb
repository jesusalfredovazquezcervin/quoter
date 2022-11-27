class CreateGoods < ActiveRecord::Migration[7.0]
  def change
    create_table :goods do |t|
      t.string :materialNumber, index: true
      t.string :type
      t.string :name
      t.string :description
      t.string :profitCenter
      t.decimal :newPrice, precision: 16, scale: 6
      t.decimal :newCost, precision: 16, scale: 6
      t.string :currency

      t.timestamps
    end
  end
end
