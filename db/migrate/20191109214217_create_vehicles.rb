class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :license_plate
      t.string :brand
      t.string :model_no
      t.string :v_type
      t.string :trim
      t.integer :capacity
      t.integer :milage
      t.decimal :package_price

      t.timestamps
    end
  end
end
