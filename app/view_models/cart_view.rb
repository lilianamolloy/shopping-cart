class CartView
  attr_accessor :products

  def initialize(product_ids)
    @products = product_ids.nil? ? [] : Product.find(product_ids)
  end

  def total
    total_price = 0

    products.each do |product|
      total_price += product.price
    end

    total_price
  end
end
