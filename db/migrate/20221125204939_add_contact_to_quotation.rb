class AddContactToQuotation < ActiveRecord::Migration[7.0]
  def change
    add_reference :quotations, :contact, foreign_key: true
  end
end
