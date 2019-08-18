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

  def discounted_price
    if total > 10000
      I18n.t("cart.show.discount",
        discount: 20,
        min_spend: 100,
        discounted_amount: calculate_discount(total, 20)
      ).html_safe
    elsif total > 5000
      I18n.t("cart.show.discount",
        discount: 15,
        min_spend: 50,
        discounted_amount: calculate_discount(total, 15)
      ).html_safe
    elsif total > 2000
      I18n.t("cart.show.discount",
        discount: 10,
        min_spend: 20,
        discounted_amount: calculate_discount(total, 10)
      ).html_safe
    else
      I18n.t("cart.show.no_discount",
        total: number_to_currency(total / 100.0)
      ).html_safe
    end
  end

  private

  def calculate_discount(amount, discount)
    discount_in_cents = amount * (discount / 100.0)
    discounted_price_in_cents = amount - discount_in_cents

    number_to_currency(discounted_price_in_cents / 100)
  end
end
