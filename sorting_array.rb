list = []
new_word = ' '

while new_word != ''
    new_word = gets.chomp
    list.push new_word
end

list.pop
puts list.sort.join (', ')
