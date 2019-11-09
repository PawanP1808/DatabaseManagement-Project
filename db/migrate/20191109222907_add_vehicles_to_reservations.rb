class AddVehiclesToReservations < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :vehicle, null: false, foreign_key: true
  end
end
