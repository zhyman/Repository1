puts "Hey bru, Let's compute some quadform."

puts "Let's compute some quadform"

puts "Give me an A:"

a=gets.chomp.to_f

puts "Give me a B:" 

b=gets.chomp.to_f

puts "Give me a C:"

c=gets.chomp.to_f

puts "beep computing boop boop..."

puts "x is either"

x=(-b+Math.sqrt(b*b-4*a*c))/(2*a)

puts "#{x}"

puts "or"
x1=(-b-Math.sqrt(b*b-4*a*c))/(2*a)

puts "#{x1}"

puts "Goodbye"
