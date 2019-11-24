class CreateBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :branches do |t|
      t.string :street
      t.string :city
      t.string :postalCode
      t.integer :phoneNo
      t.timestamps
    end
  end
end
