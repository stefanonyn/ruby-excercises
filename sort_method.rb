arr = [ "Aaa", "bravo", "beach", "bell", "Zebra", "zebra", "mother", "father", "tiger", "love", "aaa", "aAA", "aAa", "aaA", "love"]


def my_sort unsorted
  
  sorted = []

  until unsorted.length == 0
    test_element = unsorted.pop
    not_minor = false

    unsorted.each do |char|
      if test_element.upcase > char.upcase
        not_minor = true
        break
      end   
    end
    
    not_minor ?  unsorted.unshift(test_element) :  sorted.push(test_element)
    
  end
  sorted
end

puts my_sort(arr)
