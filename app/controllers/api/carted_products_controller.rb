class Api::CartedProductsController < ApplicationController
  
  def index
    if current_user  
      @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    else
      @carted_products = []
    end
      render "index.json.jb"
      p "Here is the current user"
      p current_user
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
    render "show.json.jb"
  end
  
  def create

    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      # order_id:  
    )
    @carted_product.save
    if @carted_product.save
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end

  # def update
  #   @carted_product = CartedProduct.find_by(id: params[:id])
  # #   @carted_product.name = params[:name] || @carted_product.name
  #   @carted_product.price = params[:price] || @carted_product.price
  #   @carted_product.image_url = params[:image_url] || carted_product.image_url
  #   @carted_product.description = params[:description] || carted_product.description
  #   @carted_product.save
  #   if @carted_product.save
  #     render "show.json.jb"
  #   else
  #     render "errors.json.jb"
  #   end
  # end
 
  # def destroy
  #   @product = Product.find_by(id: params[:id])
  #   @product.delete
  #   render "destroy.json.jb"
  # end
end
