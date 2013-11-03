def convert_to_roman number

roman_number = ''

thousand = number / 1000
hundred = (number % 1000) / 100
ten = (number % 100) / 10
one = (number % 10) / 1

roman_number = 'M' * thousand

if hundred == 9

	roman_number += 'CM'

elsif hundred == 4

	roman_number += 'CD'

else

	roman_number += 'D' * (number % 1000 / 500) + 'C' * (number % 500 / 100)
	
end
	
if ten == 9

	roman_number += 'XC'

elsif ten == 4

	roman_number += 'XL'

else

	roman_number += 'L' * (number % 100 / 50) + 'X' * (number % 50 / 10)
	
end

if one == 9

	roman_number += 'IX'

elsif one == 4

	roman_number += 'IV'

else

	roman_number += 'V' * (number % 10 / 5) + 'I' * (number % 5 / 1)
			
end

end



number = ''
puts 'please write a number and I will convert it to old style Roman numerals :)'
puts 'p.s. to exit this program simply hit enter on an empty line, or type 0 and enter :)'

while number != 0

	number = gets.chomp.to_i
	puts convert_to_roman number

end



# def convert_to_roman number

# 	romans_array = [[1000,'M'],[500,'D'],[100,'C'],[50,'L'],[10,'X'],[5,'V'],[1,'I']]
# 	converted_array = []

# 	romans_array.each do |rom_num|
# 		num = rom_num[0]
# 		letter = rom_num[1]
		
# 		if number >= num
# 			times = number / num
# 			roman_letter = letter*times
# 			converted_array.push(roman_letter)
# 			number = number % num

# 		end
			
# 	end
	
# 	converted_array.join()

# end

# number = ''
# puts 'please write a number and I will convert it to old style Roman numerals :)'
# puts 'p.s. to exit this program simply hit enter on an empty line, or type 0 and enter :)'

# while number != 0

# 	number = gets.chomp.to_i
# 	puts convert_to_roman number

# end