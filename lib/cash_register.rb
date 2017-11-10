class CashRegister
  attr_accessor :discount, :total

  def initialize
    @total = 0
  end

  def cash_register_with_discount(discount)
    @discount = discount
    cash_register = self.new
  end

  def add_item(title, price)
    @total += price

  end

end
