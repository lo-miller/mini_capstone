class Api::ProductsController < ApplicationController
 
  def inventory
    @inventory = Product.all
    render "inventory.json.jb"
  end


end

