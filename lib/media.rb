class Media
  attr_reader :title

  def initialize
    @discount = 0.1
    @price = 10.0
  end

  def discount_price
    @price - discount
  end

  private

  def discount
    @price * @discount
  end
end
