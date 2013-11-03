# puts Dir['../../**/*.php']

# For Katy, with love.
# Yes, I’m using forward slashes. Yes, Windows uses
# backslashes. Yes, it’s
# perfectly OK to use
# forward slashes in
# Ruby. This helps
# make Ruby programs
# more cross-platform
# (though obviously
# not this one—it runs
# only on Katy’s
# machine).
# (I always write little notes in the programs
# I write for her. I deleted all of the dirty
# ones, though, so that one is all that's left.)
# This is where she stores her pictures before
# she gets her YAML on and moves them to the server.
# Just for my own convenience, I'll go there now.

Dir.chdir '/home/stefano/projects/learning_programming/week-1'
# First we find all of the pictures to be moved.
pic_names = Dir['/home/stefano/projects/learning_programming/week-1/*.txt']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:
"
# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
  
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.txt"
  else
    "#{batch_name}#{pic_number}.txt"
  end
  if File.exist?(new_name) 
    puts "no rename"
    next
  else
    print '.' # This is our "progress bar".
    File.rename(name, new_name)
    # Finally, we increment the counter.
    pic_number += 1
  end
end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'