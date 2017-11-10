class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, qty=1)
    self.total += qty*price
  end

  def apply_discount
    self.total = self.total - self.total * self.discount / 100
    return "After the discount, the total comes to $#{self.total}."
  end

end
