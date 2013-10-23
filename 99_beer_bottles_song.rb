beer_bottles = 99

while beer_bottles > 0
	if beer_bottles != 1
		puts beer_bottles.to_s + ' bottles of beer on the wall, ' + beer_bottles.to_s + ' bottles of beer.'
	else
		puts beer_bottles.to_s + ' bottle of beer on the wall, ' + beer_bottles.to_s + ' bottle of beer.'
	end
	beer_bottles -= 1
	if beer_bottles > 1
		puts 'Take one down and pass it around, ' + beer_bottles.to_s + ' bottles of beer on the wall.'
	elsif beer_bottles == 1
		puts 'Take one down and pass it around, ' + beer_bottles.to_s + ' bottle of beer on the wall.'
	elsif beer_bottles == 0
		puts 'Take one down and pass it around, no more bottles of beer on the wall.'
	end
	
end
puts '******************'
puts 'Thank you very much for writing the lyrics for me!'