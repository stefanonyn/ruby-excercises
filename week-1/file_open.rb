# The filename doesn't have to end
# with ".txt", but since it is valid
# text, why not?

filename = 'ListerQuote.txt'
test_string = 'I promise that I swear absolutely that ' + 'I will never mention gazpacho soup again.'

# The 'w' here is for write-access to the file,
# since we are trying to write to it.

File.open filename, 'w' do |f|
f.write test_string
end
read_string = File.read filename
puts(read_string == test_string)
puts read_string

require 'yaml'
#Told you it was easy.

test_array = ["Give Quiche A Chance", "hello", "I am one string inside another array", "and love", "Mutants Out!"]
# Here's half of the magic:
test_string = test_array.to_yaml

puts test_string
# You see? Kind of like "to_s", and it is in fact a string,
# but it's a YAML description of "test_array".

filename = 'RimmerTShirts.txt'
File.open filename, 'w' do |f|
f.write test_string
end
read_string = File.read filename
# And the other half of the magic:
read_array = YAML::load read_string
puts(read_string == test_string)
puts(read_array == test_array )