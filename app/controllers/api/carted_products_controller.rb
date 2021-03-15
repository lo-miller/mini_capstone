class Api::CartedProductsController < ApplicationController
  def create
    p "current_user"
    p current_user

    @carted_product = CartedProduct.new(
      user_id: current_user.id,,
      product_id: params[:product_id],
      quantity: params[:quantity],
      # status: true,
      # order_id: order 
    )
    @carted_product.save
    if @carted_product.save
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end
end
