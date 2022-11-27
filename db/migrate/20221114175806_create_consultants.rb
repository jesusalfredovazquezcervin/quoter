class CreateConsultants < ActiveRecord::Migration[7.0]
  def change
    create_table :consultants do |t|
      t.string :code
      t.string :fullName
      t.string :email
      t.string :phoneNumber
      t.string :role

      t.timestamps
    end
  end
end
