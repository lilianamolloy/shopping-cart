class CartsController < ApplicationController
  def show
    @view = CartView.new(product_ids)
  end

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

  def product_ids
    session[:cart]
  end
end
