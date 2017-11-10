class CashRegister
  attr_accessor :discount, :total
  @@items = []

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, qty=1)
    self.total += qty*price
    qty.times.do
      @@items << title
    end
  end

  def apply_discount
    if self.discount
      self.total = self.total - self.total * self.discount / 100
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end

    def self.items
      @@items
    end

  end



end
