class CashRegister

  def initialize(discount=0)
      @total = 0
      @discount = discount
      @items = []
      @last_transaction = 0
  end

  def total=(total)
    @total = total
  end

  def total
    @total
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity

    quantity.times do
        @items << title
    end

    @last_transaction = price * quantity
  end

  def void_last_transaction
    @total -= @last_transaction 
  end

  def apply_discount
    if discount > 0
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

end
