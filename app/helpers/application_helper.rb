include ActionView::Helpers::NumberHelper

module ApplicationHelper
  def price_formatter(integer)
    price_in_dollars = integer.to_f / 100
    number_to_currency(price_in_dollars)
  end
end
