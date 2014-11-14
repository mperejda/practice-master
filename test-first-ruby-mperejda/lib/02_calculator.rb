def add(*numbers)
  numbers.inject(:+)
end

def subtract(*numbers)
  numbers.inject(:-)
end

def sum (numbers)
  numbers.empty? ? 0 : numbers.inject(:+)
end

def multiply(numbers)
  numbers.inject(:*)
end

def power(base, exponent)
  base ** exponent
end

def factorial(number)
  number == 0 ? 1 : (1..number).to_a.inject(:*)
end
