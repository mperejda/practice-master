name = "gizmo"
idx = 0
while idx < 3
  puts (name)

  idx = idx + 1
end

name = "Earl"
idx = 0
while idx < 3
  puts (name)

  idx= idx + 1
end

name = "markov"
idx = 0
while idx < 3
  puts (name)

  idx = idx + 1
end

#new method
def print_3x(name)
  idx = 0
  while idx < 3
    puts (name)
    idx = idx + 1
  end
end

puts (print_3x("matt"))

puts (print_3x("perejda"))

puts (print_3x("ed"))


#input num of squares. start at 0 and print calculate squares from 0 to num. 
def num_of_squares(num)
  squares = []

  idx = 0

  while idx < num
    squares.push(idx * idx)

    idx = idx + 1
  end
  return squares

  puts squares
end

puts ("how many squares do you want?")

num = gets.to_i
squares = num_of_squares(num)

idx = 0

while idx < squares.length
  puts (squares[idx])

  idx = idx + 1
end


puts ("Please types in gizmo")

while true
  input = gets.chomp
  if input == "gizmo"
    break
  end

  puts ("please try typing gizmo again")

end

puts ("thanks for your patience")

def hello(x)
  if x < 0
    puts ("no negatove values!")

    return
  end

  while x != 0
    puts ("hello")

    x= x-1
  end
end

hello(5)

hello(-10)

def smallest_square(x)

i=0

  while true
    square = i * i

    if square > x
      return square
    end
  i = i + 1
  end
end

puts (smallest_square(10))

