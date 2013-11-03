numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |num|

  print num
  
end

numbers.each do |num|

  if num > 5
    print num
  end
  
end

numbers.select do |num|

  if num.odd?
    print num
  end
  
end

numbers.push 11
numbers.unshift 0
numbers.pop
numbers << 3

puts ''
puts numbers

numbers = numbers | numbers

puts numbers

h = {a:1, b:2, c:3, d:4}

print h[:b]
puts ''


# h.merge!{e:5
h [:e] =5

puts h

h.delete_if {|key, value| value < 3.5 }

puts h

puts h.to_a

h1 = {a:1, b:2, c:3}

puts h1

a1 = [h,h1]

print a1
  
