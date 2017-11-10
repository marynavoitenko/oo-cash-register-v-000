class CashRegister
  attr_accessor :discount, :total
  @@items = []

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, qty=1)
    @transaction = qty*price
    self.total += @transaction
    
    i = 0
    while i<=qty
      @@items << title
      i += 1
    end
  end

  def apply_discount
    if self.discount
      self.total += self.transaction* self.discount / 100
      return "After the discount, the total comes to $#{self.total}."
  else
      return "There is no discount to apply."
    end
  end

  def items
    @@items
  end

end
