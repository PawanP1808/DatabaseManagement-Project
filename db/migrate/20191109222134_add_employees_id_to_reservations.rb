class AddEmployeesIdToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :employee_id,:integer
  end
end
