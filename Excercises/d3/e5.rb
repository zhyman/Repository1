ef whisper(whathesaid)
	whathesaid.downcase
end

def twist(whathesaid)
	whathesaid.split(//).shuffle.join
end

puts "Pick a sentence:"
sentence = gets.strip

puts whisper(sentence)

puts twist(sentence)