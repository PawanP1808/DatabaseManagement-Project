class CreateBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :branches do |t|
      t.string :street
      t.string :city
      t.string :postal_code
      t.integer :phone_no
      t.timestamps
    end
  end
end
