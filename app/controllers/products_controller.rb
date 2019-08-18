class ProductsController < ApplicationController
  def index
    @view = ProductView.new
  end
end
