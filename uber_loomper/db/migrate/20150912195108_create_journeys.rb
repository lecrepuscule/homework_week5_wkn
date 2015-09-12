class CreateJourneys < ActiveRecord::Migration
  def change
    create_table :journeys do |t|
      t.text :pickup_location
      t.text :destination
      t.datetime :pickup_time
      t.datetime :arrival_time
      t.integer :num_of_passengers
      t.references :vehicle, index: true, foreign_key: true
      t.references :driver, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
