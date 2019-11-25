class AddColorsIdToVehicles < ActiveRecord::Migration[6.0]
  def change
    add_column :vehicles, :color_id,:integer
  end
end
