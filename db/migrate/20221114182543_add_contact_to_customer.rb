class AddContactToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_reference :customers, :contact, foreign_key: true
  end
end
