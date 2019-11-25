class AddBranchesIdToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_column :employees, :branch_id,:integer
  end
end
