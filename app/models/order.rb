class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :item, optional: true
  has_many :carted_products
  has_many :items, through: :carted_products
end
