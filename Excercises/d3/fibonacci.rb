puts "Enter a number:"
number = gets.strip.to_i
answer1 = 1
answer2 = 1
if number == 1 
	answer = 1
elsif number == 2
	answer = 1
else 
	for i in 3..number 
		answer = answer1 + answer2
		answer1 = answer2
		answer2 = answer
	end
end

puts "Fibonacci at #{number}: #{answer}"