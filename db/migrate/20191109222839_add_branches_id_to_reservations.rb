class AddBranchesIdToReservations < ActiveRecord::Migration[6.0]
  def change
      add_column :reservations, :branch_id,:integer
  end
end
