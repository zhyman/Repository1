number = 0
while number < 100
	number += 1
	
	if number % 15 == 0
		puts "fizzbuzz"
		number+=1
	elsif number % 5 == 0
		puts "buzz"
		number +=1
	elsif number % 3 == 0
		puts "fizz"
		number +=1
	end
	puts number
end
