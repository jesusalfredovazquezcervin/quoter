class ChangeTypeToQuotationFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :quotations, :expirationDate
    remove_column :quotations, :terms
  end
end
