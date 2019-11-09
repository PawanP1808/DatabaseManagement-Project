class AddBranchesToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_reference :vehicles, :branch, null: false, foreign_key: true
  end
end
