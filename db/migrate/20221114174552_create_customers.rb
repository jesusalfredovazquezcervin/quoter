class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :code
      t.string :email
      t.string :fullName
      t.string :phoneNumber
      t.string :address

      t.timestamps
    end
  end
end
