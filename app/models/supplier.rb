class Supplier < ApplicationRecord
  has_many :items
  # def products
  #   Product.where(supplier_id: self.id)
  # end
end
