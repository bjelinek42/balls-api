class SuppliersController < ApplicationController
  def index
    supplier = Supplier.all
    render json: supplier
  end

  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier
  end

  def create
    supplier = Supplier.new({name: params[:name], size: params[:email], price: params[:phone]})
    if supplier.save
      render json: supplier
    else
      render json: supplier.errors.full_messages
    end
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params[:name]
    supplier.size = params[:email]
    supplier.price = params[:phone]
    if supplier.save
      render json: supplier
    else
      render json: supplier.errors.full_messages
    end
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    supplier.delete
  end
end
