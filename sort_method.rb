arr = [ "aaa", "bravo", "beach", "bell", "zebra", "mother", "father", "tiger", "love", "aaa", "love"]


def my_sort unsorted
  arr_size = unsorted.length
  
  sorted = []

  while sorted.length < arr_size
    test_element = unsorted.pop
    not_minor = 0

    unsorted.each do |char|
      if test_element > char
        not_minor += 1
      end   
    end
    
    if not_minor == 0

      sorted.push(test_element)

    else

    unsorted.unshift(test_element)
    
    end
  end
  sorted
end

puts my_sort(arr)
