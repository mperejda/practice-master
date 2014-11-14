def until_false (first_input, proc)
  input = first_input
  output = first_input

  while output
    input = output
    output = proc.call(input)
  end

  input
end

build_array_of_squares = Proc.new do |array|
  last_number = array.last
  if last_number <= 0
    false
  else
    array.pop
    array.push(last_number**2)
    array.push(last_number-1)
  end
end

always_false = Proc.new do |nothing|
  false
end


