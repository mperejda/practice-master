def reverser
  yield.split.map { |word| word.reverse}.join(" ")
end

def adder(num=1)
  yield + num
end

def repeater(n=1)
  block_was_executed = false
  n.times do
    yield
  end
  block_was_executed = true
end
