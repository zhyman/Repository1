require_relative 'item'
require_relative 'cart'
require_relative 'shopper'
require_relative 'supershopper'

shopper = Shopper.new("Ben", 40)
puts shopper.first_name
puts shopper.money
puts shopper.last_name

milk = Item.new("milk", 1.20)
eggs = Item.new("eggs", 1.30)
shopper.add_to_cart(milk)
shopper.add_to_cart(eggs)
shopper.remove_from_cart(eggs)
puts shopper.checkout

supershopper = SuperShopper.new("Zach", 40, "H")
puts supershopper.first_name
puts supershopper.money
puts supershopper.last_name
supershopper.add_to_cart(milk)
supershopper.add_to_cart(eggs)
supershopper.remove_from_cart(eggs)
puts supershopper.checkout
supershopper.get_money
supershopper.add_to_cart(milk)
puts supershopper.checkout