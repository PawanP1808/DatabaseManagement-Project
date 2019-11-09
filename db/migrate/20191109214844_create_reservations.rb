class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :dateTo
      t.date :dateFrom
      t.integer :range
      t.integer :totalCost

      t.timestamps
    end
  end
end
