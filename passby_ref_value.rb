a = [1,2,3,4,5]
puts a.object_id
def change_arr a

	a.join
	
end

puts change_arr a
puts a 
puts a.object_id

puts "*" * 50
b = [1,2,3,4,5]
puts b.object_id
def change_arr1 a

	a.unshift(0)
	
end

change_arr1 b 
puts b
puts b.object_id
