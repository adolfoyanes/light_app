class AddDescriptionToUnits < ActiveRecord::Migration[5.2]
  def change
    add_column :units, :description, :text
  end
end
