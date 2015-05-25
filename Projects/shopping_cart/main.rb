require_relative 'item'
require_relative 'cart'
milk = Item.new("milk", 1.20)
eggs = Item.new("eggs", 1.30)
cart = Cart.new
cart.add(milk)
cart.add(milk)
cart.add(eggs)
p cart.items

p cart.total_price
# 3.7
cart.remove(milk)
p cart.total_price
# 1.3