class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :goods, :type, :category
  end
end
