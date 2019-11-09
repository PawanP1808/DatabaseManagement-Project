class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :licensePlate
      t.string :brand
      t.string :modelNo
      t.string :type
      t.string :trim
      t.integer :capacity
      t.integer :milage
      t.decimal :packagePrice

      t.timestamps
    end
  end
end
