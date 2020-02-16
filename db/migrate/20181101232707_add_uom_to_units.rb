class AddUomToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :uom, :string
  end
end
