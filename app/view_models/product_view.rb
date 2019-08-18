class ProductView
  attr_accessor :products

  def initialize
    @products = Product.all
  end
end
