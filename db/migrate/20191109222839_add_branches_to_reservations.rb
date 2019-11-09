class AddBranchesToReservations < ActiveRecord::Migration[6.0]
  def change
    add_reference :reservations, :branch, null: false, foreign_key: true
  end
end
