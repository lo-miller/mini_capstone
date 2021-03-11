class Api::OrdersController < ApplicationController

  def create
    p "current_user"
    p current_user

    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    
    @order = Order.new(
      # user_id - auth
      user_id: current_user.id,
      # product_id - params - add validation that product exists
      product_id: params[:product_id],
      # quantity - params
      quantity: params[:quantity],
      # subtotal - model method
      subtotal: calculated_subtotal,
      # tax - model method
      tax: calculated_tax,
      # total - model method
      total: calculated_total
    )
    @order.save
    render "show.json.jb"
  end

end
