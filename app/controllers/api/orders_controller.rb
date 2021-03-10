class Api::OrdersController < ApplicationController

  def create
    @order = Order.new(
      # user_id - auth
      # product_id - params - add validation that product exists/fetch
      product_id: params[:product_id],
      # quantity - params
      quantity: params[:quantity],
      # subtotal - model method
      # total - model method
      # tax - model method
    )
    render "show.json.jb"
  end

end
