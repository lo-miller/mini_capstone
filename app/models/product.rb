class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products

  validates :name, :price, :presence => true
  validates :price, numericality: true
  validates :price, :numericality => { :greater_than_or_equal_to => 0 } 
  validates :description, length: {maximum: 500}

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    return price * 0.09
  end

  def total
    return price + tax
  end

  # def supplier
  #   return Supplier.find_by(id: supplier_id)
  # end

end
