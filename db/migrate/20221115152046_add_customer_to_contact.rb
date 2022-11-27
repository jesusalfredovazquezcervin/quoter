class AddCustomerToContact < ActiveRecord::Migration[7.0]
  def change
    add_reference :contacts, :customer, foreign_key: true
  end
end
