puts 'hello I will tell you all the leap years between a starting year and an end year'
puts 'please give me the starting year'
start_year = gets.chomp.to_i
puts 'please give me the end year now'
end_year = gets.chomp.to_i

while start_year < (end_year + 1)
	if (start_year % 100 == 0 && start_year % 4 == 0) | (start_year % 4 == 0 && start_year % 100 != 0)
		puts start_year.to_s + ' was a leap year'
	end
	start_year += 1 
end

&g4gTq7**tw2I6DJ