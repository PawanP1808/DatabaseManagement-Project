class AddEmployeesToReservations < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :employee, null: false, foreign_key: true
  end
end
