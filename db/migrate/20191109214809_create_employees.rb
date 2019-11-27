class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :ssn
      t.date :date_of_birth
      t.string :sex
      t.decimal :salary

      t.timestamps
    end
  end
end
