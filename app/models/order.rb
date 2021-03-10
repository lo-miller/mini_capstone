class Order < ApplicationRecord
  belongs_to :product
  belongs_to :order

  def subtotal
    product = Product.find_by
    return quantity * price
  end



end
