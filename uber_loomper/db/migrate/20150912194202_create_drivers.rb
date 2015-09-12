class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :employee_id
      t.text :address
      t.boolean :available

      t.timestamps null: false
    end
  end
end
