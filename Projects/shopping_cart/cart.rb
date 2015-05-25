class Cart
  def initialize
    @items = []
  end

  # @return{Array<Item>}
  #   The items and their quantities in the cart, keyed by item name.
  def items
    @items
  end

  # @return{float} The total price of all the goods in the cart.
  def total_price
    totprice = 0.00
    @items.each do |item|
      totprice += item.price
    end
    totprice
  end

  # @param{Item} item The item to add.
  def add(item)
    @items.push(item)
  end

  # @param{Item} item The item to remove.
  def remove(item)
    if @items.include?(item)
    @items.delete(item)
  end
  end
end