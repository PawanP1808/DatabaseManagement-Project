class AddBranchesIdToVehicles < ActiveRecord::Migration[6.0]
  def change
      add_column :vehicles, :branch_id,:integer
  end
end
