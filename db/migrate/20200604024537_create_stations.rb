class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :line_near
      t.string :station_near
      t.integer :minutes_needed
      t.references :property_id

      t.timestamps
    end
  end
end
