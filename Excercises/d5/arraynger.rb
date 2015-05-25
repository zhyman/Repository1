class Array
	def naturals(input)
	i = 1	
	while i < input.to_i + 1
		self.push(i) 
		i +=1
	end
	self
	end

	def increment
	i = 0
	while i < self.length
		self[i] = self[i] + 1
		i += 1
	end
	self
	end

	def increment_by_n(input)
	i = 0
	while i < input 
		self.increment
		i += 1
	end
	self
	end
end 

array = []
print array.naturals(3)
puts "\n"

print array.increment
puts "\n"

print array.increment_by_n(6)
puts "\n"