#sort by price low: Product.order("price ASC")
#sort by price high: Product.order("price DESC")
#sort by discounted (under 20): Product.where("price <?", 20)


class Api::ProductsController < ApplicationController

  def index

    if current_user  
      if params[:discount] == "true"
        @products = Product.where("price <?", 20)
      elsif params[:sort] && params[:sort_order] 
        @products = Product.order("#{params[:sort]} #{params[:sort_order]}")      
      else
        @products = Product.all
        @products = @products.order("id ASC")
      end
    else
      products = []
    end
      render "index.json.jb"
      p "Here is the current user"
      p current_user
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    @product.save
    if @product.save
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || product.image_url
    @product.description = params[:description] || product.description
    @product.save
    if @product.save
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end
 
  def destroy
    @product = Product.find_by(id: params[:id])
    @product.delete
    render "destroy.json.jb"
  end


  
end

