born = Time.gm(1977,9,20,10,05)
bil = born + 1000000000
puts "You turned 1 billion seconds on #{bil}, congratulation!"

puts "please type the year you born"
year = gets.chomp.to_i
puts "please type the month (in numbers, i.e. January -> 1) you were born"
month = gets.chomp.to_i
puts "please enter the day you were born"
day = gets.chomp

born = Time.local(year,month,day)
now = Time.now

bdays = ((now - born).to_i) / 31536000

puts "Hey you are #{bdays} year old!"
puts "Congrats, you deserve a nice spank for each birthday"

bdays.times { puts "SPANK!" + (bdays-1).to_s } 
