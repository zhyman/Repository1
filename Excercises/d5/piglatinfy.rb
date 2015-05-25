class String
def piglatinfy
	arrayorigin = self.split(//)
	array = self.downcase.split(//)
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
	joinedstring = array.join
	return array.join + "ay"
end

def piglatinfy_sentence
	array = self.split
	sentence = ""
	array.each do |item|
		item.piglatinfy
		sentence = sentence + " " + item.piglatinfy
	end
	sentence
end
end

puts "Something something something".piglatinfy_sentence