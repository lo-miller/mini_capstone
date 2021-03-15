class CartedProduct < ApplicationRecord
  belongs_t0 :products
  belongs_to :order, optional: true
  belongs_to :user
end
