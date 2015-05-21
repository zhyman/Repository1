list=[]
stop = false

while stop == false
	puts "Welcome to container builder!\n What can I do for you?"
	item = gets.strip
	item = item.split(" ")
	addremove = item(0).upcase
	z = item.size

	if addremove == "ADD"
		list << item[1..z].join(" ")
		puts "Added! Your container has:\n "
		
	elsif addremove == "REMOVE"
		list.delete(item[1..z].join(" "))
		puts "Removed! Your container has:\n "

	elsif addremove == 'QUIT'
		stop = true
		puts "Bye!"
	end
end
		
		

