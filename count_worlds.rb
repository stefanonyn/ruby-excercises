# require 'pry'
# These are just to make the map easier for me to read.
# "M" is visually more dense than "o".
M = 'land'
o = 'water'
world = [[o,o,o,o,o,o,o,o,o,o,o],
[o,o,o,o,M,M,o,o,o,o,o],
[o,o,o,o,o,o,o,o,M,M,o],
[o,o,o,M,o,o,o,o,o,M,o],
[o,o,o,M,o,M,M,o,o,o,o],
[o,o,o,o,M,M,M,M,o,o,o],
[o,o,o,M,M,M,M,M,M,M,o],
[o,o,o,M,M,o,M,M,M,o,o],
[o,o,o,o,o,o,M,M,o,o,o],
[M,M,o,o,o,M,o,o,o,o,o],
[M,M,o,o,o,o,o,o,o,o,o]]


def continent_size world, x, y


if x.between?(0,(world.length-1)) and y.between?(0,(world[0].length-1))


# binding.pry
 if world[y][x] != 'land'
# Either it's water or we already counted it,
# but either way, we don't want to count it now.
return 0
end



  # So first we count this tile...
  size = 1
  world[y][x] = 'counted land'
# ...then we count all of the neighboring eight tiles
# (and, of course, their neighbors by way of the recursion).
size = size + continent_size(world, x-1, y-1)
size = size + continent_size(world, x , y-1)
size = size + continent_size(world, x+1, y-1)
size = size + continent_size(world, x-1, y )
size = size + continent_size(world, x+1, y )
size = size + continent_size(world, x-1, y+1)
size = size + continent_size(world, x , y+1)
size = size + continent_size(world, x+1, y+1)
size
else
  return 0
end

end
puts continent_size(world, 0, 10)
