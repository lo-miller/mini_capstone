class Api::ProductsController < ApplicationController
 
  def inventory
    @inventory = Product.all
    render "inventory.json.jb"
  end

  def boots
    @product = Product.find_by({name: "boots"})
    render "boots.json.jb"
   end

  def tent    
    @product = Product.find_by({name: "tent"})
    render "tent.json.jb"
  end

  def query
    @product = Product.find_by({name: params[:name]})
    render "query_param.json.jb"
  end

end

