class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.integer :branchId
      t.string :firstName
      t.string :lastName
      t.integer :ssn
      t.date :dateOfBirth
      t.string :sex
      t.decimal :salary

      t.timestamps
    end
  end
end
