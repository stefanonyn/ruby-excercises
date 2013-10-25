def convert_to_roman number

	romans_array = [[1000,'M'],[500,'D'],[100,'C'],[50,'L'],[10,'X'],[5,'V'],[1,'I']]
	converted_array = []

	romans_array.each do |rom_num|
		num = rom_num[0]
		letter = rom_num[1]
		
		if number >= num
			times = number / num
			roman_letter = letter*times
			converted_array.push(roman_letter)
			number = number % num

		end
			
	end
	
	converted_array.join()

end

number = ''
puts 'please write a number and I will convert it to old style Roman numerals :)'
puts 'p.s. to exit this program simply hit enter on an empty line, or type 0 and enter :)'

while number != 0

	number = gets.chomp.to_i
	puts convert_to_roman number

end