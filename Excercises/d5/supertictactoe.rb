bool = true
i = 0
hash = {}
display = {}
while bool
	i += 1 
	if i%2 == 1
		puts "Player 1:"
		playerval = "X"
	else
		puts "Player 2:"
		playerval = "O"
	end
	input = gets.strip
	inputnum = input.to_i
	if !(input == "0" || (inputnum > 0 && inputnum < 16))
		puts "Error: Invalid input"
		i = i-1
	elsif hash.has_key?(inputnum)
		puts "Error: Square already taken"
		i = i-1
	else 
		hash[inputnum] = playerval 
		puts hash
	end

	

	puts "  " + hash[0].to_s + " | " + hash[1].to_s + " | " + hash[2].to_s + " | " + hash[3].to_s
	puts "---+---+---+---"
	puts "  " + hash[4].to_s + " | " + hash[5].to_s + " | " + hash[6].to_s + " | " + hash[7].to_s
	puts "---+---+---+---"
	puts "  " + hash[8].to_s + " | " + hash[9].to_s + " | " + hash[10].to_s + " | " + hash[11].to_s
	puts "---+---+---+---"
	puts "  " + hash[12].to_s + " | " + hash[13].to_s + " | " + hash[14].to_s + " | " + hash[15].to_s

	if (hash[3] == hash[7] && hash[7] == hash[11] && hash[11] == hash[15] && hash[15] != nil) || (hash[12] == hash[13] && hash[13] == hash[14] && hash[13] == hash[15] && hash[12] != nil) || (hash[0] == hash[1] && hash[1] == hash[2] && hash[1] == hash[3] && hash[0] != nil) || (hash[4] == hash[5] && hash[5] == hash[6] && hash[6] == hash[7] && hash[6] != nil) || (hash[8] == hash[9] && hash[9] == hash[10] && hash[11] == hash[9] && hash[10] != nil) || (hash[0] == hash[4] && hash[4] == hash[8] && hash[8] == hash[12] && hash[8] != nil) || (hash[1] == hash[5] && hash[5] == hash[9] && hash[5] == hash[13] && hash[9] != nil) || (hash[2] == hash[6] && hash[6] == hash[10] && hash[6] == hash[14] && hash[10] != nil) || (hash[0] == hash[5] && hash[5] == hash[10] && hash[15] == hash[5] && hash[10] != nil) || (hash[3] == hash[6] && hash[9] == hash[6] && hash[12] == hash[6] && hash[9] != nil) 
		if playerval == "X"
			puts "Player 1 wins!"
			bool = false
		else 
			puts "Player 2 wins!"
			bool = false
		end
	elsif hash.size == 16
		puts "Cats game!"
		bool = false
	end

end