class Api::OrdersController < ApplicationController

  def index
    p "current_user"
    p current_user

    @orders = current_user.orders
    render "index.json.jb"
  end

  def show
    p "current_user"
    p current_user

    @order = Order.find_by(id: params[:id], user_id: current_user.id)
    render "show.json.jb"
  end

  def create
    p "current_user"
    if current_user
      @products = CartedProduct.where(user_id: current_user.id, status: "carted") 
      p @products
    end

    calculated_subtotal = 0
    i = 0

    while i < @products.length
      product = @products[i]
      product_quantity = product.quantity.to_i
      product_price = Product.find_by(id: product.product_id).price.to_i
      partial_subtotal = product_quantity * product_price

      calculated_subtotal = calculated_subtotal + partial_subtotal

      p "calculated subtotal:"
      p calculated_subtotal

      i += 1
    end

    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    
    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    @order.save!
    render "show.json.jb"
  end

end
