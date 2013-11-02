arr = [ "aaa", "bravo", "beach", "bell", "zebra", "mother", "father", "tiger", "love", "aaa", "love"]


def my_sort unsorted
  
  sorted = []

  until unsorted.length == 0
    test_element = unsorted.pop
    not_minor = false

    unsorted.each do |char|
      if test_element > char
        not_minor = true
        break
      end   
    end
    
    not_minor ?  unsorted.unshift(test_element) :  sorted.push(test_element)
    
  end
  sorted
end

puts my_sort(arr)
