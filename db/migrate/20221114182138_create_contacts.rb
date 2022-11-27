class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :code
      t.string :fullName
      t.string :email
      t.string :phoneNumber

      t.timestamps
    end
  end
end
