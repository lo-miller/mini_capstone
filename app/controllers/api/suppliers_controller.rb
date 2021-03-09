class Api::SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
        )
    @supplier.save
    if @supplier.save
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || supplier.phone_number
    @supplier.save
    if @supplier.save
      render "show.json.jb"
    else
      render "errors.json.jb"
    end
  end
 
  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.delete
    render "destroy.json.jb"
  end


  
end
