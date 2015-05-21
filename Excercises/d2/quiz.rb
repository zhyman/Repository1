points = 0
puts "Welcome to Zack's mini quiz"
puts "What is my last name?"
last_name = gets.chomp.downcase
if last_name == "hyman"
	points += 1
	puts "Right! You have #{points} points"
else
	puts "Wrong, You have #{points} points"
end

puts "How old am I?"
age = gets.chomp.to_i
if age == 23
	points += 1
	puts "Right! You have #{points} points"
else
	puts "Wrong, I'm 23 you have #{points} points"
end

puts "How many siblings do I have?"
siblings = gets.chomp.to_i
if siblings == 1
	points += 1
	puts "Right! You have #{points} points"
else
	puts "Wrong, I have 1 sibling you have #{points} points"
end
