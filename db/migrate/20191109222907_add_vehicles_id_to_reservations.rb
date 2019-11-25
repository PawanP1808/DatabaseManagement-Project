class AddVehiclesIdToReservations < ActiveRecord::Migration[6.0]
  def change
      add_column :reservations, :vehicle_id,:integer
  end
end
