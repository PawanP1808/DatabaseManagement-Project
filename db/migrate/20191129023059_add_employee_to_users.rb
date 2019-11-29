class AddEmployeeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :employee_id, :integer
  end
end
