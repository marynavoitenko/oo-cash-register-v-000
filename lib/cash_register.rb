class CashRegister
  attr_accessor :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def self.total
    @total
  end

end
