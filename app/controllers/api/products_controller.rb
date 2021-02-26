class Api::ProductsController < ApplicationController

  def index
    @index = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end
 
end

