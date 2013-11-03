arr = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]


def my_shuffle unshuffled
  
  shuffled = []

  until unshuffled.length == 0
    
    shuffled << unshuffled.slice!((rand(unshuffled.length)))
    
  end
  shuffled
end

puts my_shuffle(arr)
