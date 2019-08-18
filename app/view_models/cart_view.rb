class CartView
  attr_accessor :products

  def initialize(product_ids)
    @products = product_ids.nil? ? [] : Product.find(product_ids)
  end
end