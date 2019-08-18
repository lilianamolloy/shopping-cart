class ProductView
  attr_accessor :products

  def initialize
    @products = Product.all
  end

  def price(integer)
    price_in_dollars = integer.to_f / 100
    number_to_currency(price_in_dollars)
  end
end
