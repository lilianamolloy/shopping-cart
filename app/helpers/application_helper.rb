include ActionView::Helpers::NumberHelper

module ApplicationHelper
  def price_formatter(cents)
    price_in_dollars = cents.to_f / 100
    number_to_currency(price_in_dollars)
  end
end
