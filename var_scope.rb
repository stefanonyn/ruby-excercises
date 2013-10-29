outer_var = "hi I am an outer variable"

def change_var variable

  variable.capitalize!
  

end

change_var outer_var
puts outer_var

def change1 variable1

  outer_var = variable1 << ", and I have been changed"
  
end

change1 outer_var
puts outer_var

def change2 variable2

  variable2.split(' ')
  
end

outer_var = change2 outer_var
puts outer_var

def change3 variable

  variable.each { |v| v.capitalize }
  str = variable.to_s

end

change3 outer_var
puts str