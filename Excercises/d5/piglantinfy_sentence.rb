def piglatinfy(input)
	arrayorigin = input.split(//)
	array = input.downcase.split(//)
	if (array[0] != arrayorigin[0])
		upcase = true
	end
	i = 0
	newarray = Array.new(array.length)
	while i < array.length
		if i == 0
		backletter = array[i]
		end
		newarray[i-1] = array[i]
		i += 1
	end 

	array = newarray 
	if upcase
	array[0] = array[0].upcase
	end
	array[array.length - 1] = backletter
	array = array.join + "ay"
end

def piglatinfy_sentence(input)
	array = input.split
	sentence = ""
	array.each do |item|
		piglatinfy(item)
		sentence = sentence + " " + piglatinfy(item) 
	end
	sentence
end

puts piglatinfy_sentence("something Something something")