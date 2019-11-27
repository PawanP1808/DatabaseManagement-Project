class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.integer :drivers_license
      t.date :date_of_birth
      t.string :email
      t.string :street
      t.string :city
      t.string :postal_code

      t.timestamps
    end
  end
end
