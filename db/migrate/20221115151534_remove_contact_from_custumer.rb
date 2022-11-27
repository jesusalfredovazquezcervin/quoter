class RemoveContactFromCustumer < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers, :contact_id
  end
end
