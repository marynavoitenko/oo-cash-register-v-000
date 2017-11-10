class CashRegister
  attr_accessor :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

end
