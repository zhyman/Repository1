puts "Welcome to container builder!"
container = {}
run = true
while run 
	puts "What can I do for you?"
	response = gets.chomp
	arrayresponse = response.split
	i = 1
	actualresponse = ""
	while i < arrayresponse.length 
	if i == 1
	actualresponse = arrayresponse[1]
	else
	actualresponse = actualresponse + " " + arrayresponse[i]
	end
	i += 1
	end

	if arrayresponse[0] == "add" || arrayresponse == "Add"
		if container.has_key?(actualresponse)
			container[actualresponse] = container[actualresponse] + 1
		else
			container[actualresponse] = 1
		end 
		
		puts "Added! Your container has:"
		print container
		puts "\n"
	elsif arrayresponse[0] == "remove" || arrayresponse == "Remove"
		if container.has_key?(actualresponse)
		if container[actualresponse] == 1
			container.delete(actualresponse)
		else
			container[actualresponse] = container[actualresponse] - 1		
		end 

		puts "Removed! Your container is:"
		print container
		puts "\n"
		else
		puts "That key is not in the container!"
		end
	elsif arrayresponse[0] == "quit" || arrayresponse == "Quit"
		run = false
	else 
		puts "That was not an actual command. The commands are add, delete and quit."
	end
end
puts "Bye!"