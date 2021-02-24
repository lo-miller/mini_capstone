class Api::ProductsController < ApplicationController
 
  def inventory
    @inventory = Product.all
    render "inventory.json.jb"
  end

  def boots
    @boots = Product.find_by({name: "boots"})
    render "boots.json.jb"
   end

  def tent    
    @tent = Product.find_by({name: "tent"})
    render "tent.json.jb"
  end

end

