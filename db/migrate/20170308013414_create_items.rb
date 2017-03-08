class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :device
      t.string :brand
      t.string :model
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
