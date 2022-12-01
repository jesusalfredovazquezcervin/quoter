class AddUserToConsultant < ActiveRecord::Migration[7.0]
  def change
    add_reference :consultants, :user, foreign_key: true
  end
end
