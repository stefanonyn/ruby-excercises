def convert_to_roman number

	romans_array = [[1000,'M'],[500,'D'],[100,'C'],[50,'L'],[10,'X'],[5,'V'][1,'I']]
	converted_array = []

	romans_array.each do |rom_num|
		num = rom_num[0]
		letter = rom_num[1]

		if number > num
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

	# if number >= 1000
	# 	m_times = number / 1000
	# 	m = 'M'*m_times
	# 	number = number % 1000			
	# end

	# if number >= 500
	# 	d_times = number / 500
	# 	d = 'D'*d_times
	# 	number = number % 500
	# end

	# if number >= 100
	# 	c_times = number / 100
	# 	c = 'C'*c_times
	# 	number = number % 100
	# end

	# if number >= 50
	# 	l_times = number / 50
	# 	l = 'L'*l_times
	# 	number = number % 50
	# end

	# if number >= 10
	# 	x_times = number / 10
	# 	x = 'X'*x_times
	# 	number = number % 10
	# end

	# if number >= 5
	# 	v_times = number / 5
	# 	v = 'V'*v_times
	# 	number = number % 5
	# end

	# if number > 0
	# 	i = 'I'*number
	# end
	# roman = [m,d,c,l,x,v,i]
	# roman.join()