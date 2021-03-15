class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :carted_products

  # def subtotal
  #   product = Product.find_by
  #   return quantity * price
  # end



end
