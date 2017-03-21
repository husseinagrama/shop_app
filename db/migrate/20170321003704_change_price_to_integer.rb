class ChangePriceToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :price, "numeric USING CAST(price AS numeric)"
    change_column :items, :price, :decimal, precision: 6, scale: 2
  end
end
