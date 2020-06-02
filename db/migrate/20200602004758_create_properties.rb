class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :rent
      t.string :place
      t.integer :old
      t.text :comment
      t.timestamps
    end
  end
end
