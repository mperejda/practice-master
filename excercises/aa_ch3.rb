cool_things = []

while cool_things.length < 3
  puts ("tell me one more cool thing")

  thing = gets.chomp

  cool_things.push(thing)

end

idx = cool_things.length - 1

while idx >= 0
  puts(cool_things[idx])

  idx = idx - 1
end

cool = []

while cool.length < 3
  puts ("tell me another cool thing")

  thing = gets.chomp

  #add item at the end of the array
  cool.unshift(thing)
end

idx = 0

while idx < cool.length
  puts (cool[idx])

  idx = idx + 1
end

str ="abcd"

idx = 0

while idx < str.length
  puts (str[idx])

  idx = idx + 1
end
