class AddExpirationDaysToQuotation < ActiveRecord::Migration[7.0]
  def change
    add_column :quotations, :expirationDays, :integer
    add_column :quotations, :creditDays, :integer
  end
end
