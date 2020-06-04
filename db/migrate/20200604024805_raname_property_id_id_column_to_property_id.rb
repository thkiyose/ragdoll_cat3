class RanamePropertyIdIdColumnToPropertyId < ActiveRecord::Migration[5.2]
  def change
    rename_column :stations, :property_id_id, :property_id
  end
end
