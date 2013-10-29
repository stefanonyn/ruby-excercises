require 'pry'

puts 'Hello dearest SONNY how are you?'
bye_count = 0
while true
	tell_grandma = gets.chomp
	if tell_grandma.downcase == 'bye'
		bye_count += 1
		puts 'DEAR SONNY PLEASE STAY A BIT LONGER'
	else 
		bye_count = 0
	end
	
	if bye_count >= 3
		puts 'ok dearest SONNY see you soon!'
		break
	end
	binding.pry

	if tell_grandma != tell_grandma.upcase && tell_grandma.downcase != 'bye'
		puts 'HUH?! SPEAK UP, SONNY!'	
	elsif tell_grandma.downcase != 'bye'
		year = 1930 + (rand(21))
		puts 'NO, NOT SINCE ' + year.to_s + '!!'
	end	
end
