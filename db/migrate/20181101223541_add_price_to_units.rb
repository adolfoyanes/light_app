class AddPriceToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :price, :decimal, precision: 8, scale: 2
  end
end
