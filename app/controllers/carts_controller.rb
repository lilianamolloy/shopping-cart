class CartsController < ApplicationController
  def show
    @view = CartView.new(cart)
  end

  def update
    session[:cart] = [] unless cart.any?

    if cart.include?(product_id)
      flash[:notice] = I18n.t("cart.update.error")
    else
      cart.push(product_id)
      flash[:notice] = I18n.t("cart.update.successful")
    end

    redirect_to root_path
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
