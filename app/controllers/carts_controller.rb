class CartsController < ApplicationController
  def show
    @view = CartView.new(cart)
  end

  def update
    if cart.nil?
      session[:cart] = [product_id]
    else
      cart.push(product_id) unless cart.include?(product_id)
    end
  end

  def destroy
    cart.delete_if { |id| id == product_id }
    redirect_to cart_path
  end

  private

  def product_id
    params[:product_id]
  end

  def cart
    session[:cart]
  end
end
