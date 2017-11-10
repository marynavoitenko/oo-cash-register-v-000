class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  # def cash_register_with_discount(discount)
  #   @discount = discount
  #   cash_register = self.new
  # end

  def add_item(title, price, qty=1)
    self.total += qty*price
  end

  def apply_discount
    self.total -= self.add_item*100
  end

end
