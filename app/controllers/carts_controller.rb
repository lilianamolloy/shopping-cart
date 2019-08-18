class CartsController < ApplicationController
  def update
    raise
    cart = session[:cart]

    if cart.nil?
      session[:cart] = [product_id]
    else
      cart.push(product_id) unless cart.include?(product_id)
    end
  end

  private

  def product_id
    params[:product_id]
  end
end