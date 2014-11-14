words =[]
word = " "

while word != ""
  word = gets.chomp
  word == "" ? nil : words << word
end

p words
