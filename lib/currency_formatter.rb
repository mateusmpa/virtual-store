module CurrencyFormatter
  def formatted_price
    "R$ #{@price}"
  end

  def formatted_discount_price
    "R$ #{discount_price}"
  end
end
