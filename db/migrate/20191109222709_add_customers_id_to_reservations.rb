class AddCustomersIdToReservations < ActiveRecord::Migration[6.0]
  def change
      add_column :reservations, :customer_id,:integer
  end
end
