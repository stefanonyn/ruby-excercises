outer_var = "hi I am an outer variable"

# def change_var variable

#   variable.capitalize!
  

# end

# change_var outer_var
# puts outer_var

# def change1 variable1

#   outer_var = variable1 << ", and I have been changed"
  
# end

# change1 outer_var
# puts outer_var

# def change2 variable2

#   variable2.split(' ')
  
# end

# outer_var = change2 outer_var
# puts outer_var

puts outer_var.object_id
  2.times do 
    outer_var = outer_var.chop
  end
puts outer_var
puts outer_var.object_id

puts "*" * 50

outer_var = "hi I am an outer variable"
puts outer_var.object_id

2.times do 
  puts outer_var.chop
  puts outer_var.object_id

end

puts outer_var