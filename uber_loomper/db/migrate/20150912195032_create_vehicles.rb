class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :licence_plate
      t.integer :capacity
      t.boolean :available
      t.string :status

      t.timestamps null: false
    end
  end
end
