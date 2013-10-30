a = [1,2,3,4,5]

def change_arr a

	a.join
	
end

change_arr a
puts a 


def change_arr1 a

	a.unshift(0)
	
end

change_arr1 a 
puts a

outer_var = "hi I am an outer variable"

2.times do 
  outer_var.chop
end

puts outer_var