def find_position(string, letter)
	if string.include?(letter)
		puts string.index(letter)
	else 
		puts -1
	end
end


def find_by_name(hasharray, name)
	answer = nil
	hasharray.each do |item|
		if item[:name] == name 
			answer = item
			break
		end 
	end 
	answer
end



def filter_by_name(hasharray, name)
	answer = []
	hasharray.each do |item|
		if item[:name] == name 
			answer.push(item)		
		end 
	end 
	answer
end