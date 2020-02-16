class AddAreaToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :area, :float
  end
end
