puts "7".to_i

puts 42.to_s

puts (3<4)

puts (5>10)

puts (3 == 4)
puts (4 != 5)
puts ("three" == "three")

puts ("type a number")

num = gets.to_i

if num < 10
  puts "small number"
  
  elsif num < 1000 
    puts "larger number"

  elsif 
    puts "now we are getting somewhere"
    
end

puts ("thank for playing")

puts ("input a number")


num = gets.to_i

if (num > 10) && (num < 20)
  puts "greater than 10 and less than 20"
else
  puts "your num is less than 10 or greater than 20. Or both!"
end

puts ("input a number")

num = gets.to_i
if (num == 7) || (num ==13)
  puts "magic number"
else
  puts "not a magic number, sorry..."
end

puts (3 == 3)

puts (3 != 3)

puts (!(3 == 3))

puts ("input num")

num = gets.to_i

while num <100
  puts "too small! Try again."

  num = gets.to_i
end

puts ("you typed " + num.to_s + " which is greater than 100")

i = 0

while i  < 3
  puts ("hello world")

  i = i+1
end

puts ("you went aroumd the world three times!")


cool_things = ["racecars", "jets", "girls"]
four_primes = [2,3,5,7]
empty_arr = []

presidents = [
  "George Washington",
    "John Adams",
      "Thomas Jefferson",
        "James Madison",
          "James Monroe",
            "John Quincy Adams"
            ]

idx = 0

while idx < presidents.count
  puts (presidents[idx])

  idx = idx + 1
end

puts ("Presidents methods completed")
