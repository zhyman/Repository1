result = []
engines = ["Google", "Bing", "Ask Jeeves"]
engines.map do |e|
	if e == "Google"
		result.push("OK")
	elsif e == "Bing"
		result.push("Bad!")
	else
		result.push("What is that?")
	end
end

print result
puts "\n"