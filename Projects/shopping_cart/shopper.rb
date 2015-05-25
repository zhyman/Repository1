class Shopper
	def initialize(first_name, money = 100, *last_name)
		@first_name = first_name
		@last_name = last_name
		@money = money
		@cart = Cart.new()
	end 
	require_relative 'item'
	require_relative 'cart'
	def first_name
		@first_name
	end

	def last_name 
		@last_name
	end

	def full_name
		full_name = @first_name + @last_name
		full_name
	end

	def money
		@money
	end

	def add_to_cart(item)
		@cart.add(item)
	end

	def remove_from_cart(item)
		@cart.remove(item)
	end

	def checkout
		if(@money >= @cart.total_price)
		@money = @money - @cart.total_price
		itemss = @cart.items
		itemss.each do |item|
		@cart.remove(item)
		end
		end
		@money
	end
end 