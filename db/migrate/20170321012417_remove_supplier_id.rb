class RemoveSupplierId < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :supplier, :integer
  end
end
