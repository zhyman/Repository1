bool = true
while bool
puts "What do you want to search?"

puts "Type 1 for Title search, 2 for Body search, 3 for Status search, 4 for ResponseID search, q to quit"
num = gets.strip

if num == "1"
	word = "title="
elsif num == "2"
	word = "body="
elsif num == "3"
	word = "status="
elsif num == "4"
	word = "responseid="
elsif num == "q"
	bool = false
	puts "Peace!"
	exit
else 
	puts "Please put a valid input."
end 
puts "What keyword do you want to use to search?"
answer2 = gets.strip

require 'restclient'
rest_data = RestClient.get("https://api.whitehouse.gov/v1/petitions.json?"+ word + answer2)
json_data = JSON.load(rest_data)
json_data['results'].each do |item|
	puts item['title']
	puts item['signaturesNeeded']
	puts item['deadline']
	puts item['status']

end
end