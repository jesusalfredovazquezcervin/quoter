class AddUserToQuotation < ActiveRecord::Migration[7.0]
  def change
    add_reference :quotations, :user, foreign_key: true
  end
end
