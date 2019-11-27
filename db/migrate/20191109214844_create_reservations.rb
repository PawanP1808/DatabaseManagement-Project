class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :date_to
      t.date :date_from
      t.integer :range
      t.integer :total_cost

      t.timestamps
    end
  end
end
