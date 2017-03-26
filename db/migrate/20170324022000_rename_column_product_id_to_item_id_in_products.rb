class RenameColumnProductIdToItemIdInProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_id, :item_id
  end
end
