class DVD < Media
  attr_reader :title

  def self.currency_format(*variables_and_methods)
    variables_and_methods.each do |name|
      define_method("formatted_#{name}") do
        value = respond_to?(name) ? send(name) : instance_variable_get("@#{name}")
        "R$ #{value}"
      end
    end
  end

  currency_format :discount_price, :price

  def initialize(title, price, category)
    super()
    @title = title
    @price = price
    @category = category
  end

  def to_s
    %Q{ Title: #{@title}, Price: #{@price} }
  end
end
