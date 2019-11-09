class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :firstName
      t.string :lastName
      t.integer :phoneNumber
      t.integer :driversLicense
      t.datetime :dob
      t.string :email
      t.string :street
      t.string :city
      t.string :postalcode

      t.timestamps
    end
  end
end
