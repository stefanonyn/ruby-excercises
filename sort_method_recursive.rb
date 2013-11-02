arr = [ "aaa", "bravo", "beach", "bell", "zebra", "mother", "father", "tiger", "love", "aaa", "love"]


def my_sort unsorted
    recursive_sort unsorted, []
end

def recursive_sort unsorted, sorted
          
  test_element = unsorted.pop
  not_minor = false

  unsorted.each do |word|
    if test_element > word
      not_minor = true
      break
    end   
  end
  
  not_minor ?  unsorted.unshift(test_element) :  sorted.push(test_element)
  
  unsorted.length > 0 ? recursive_sort(unsorted, sorted)  :  sorted
end

puts my_sort(arr)
