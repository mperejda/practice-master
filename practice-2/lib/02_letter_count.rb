def letter_count(str)
 debugger
 
 count = {}

  clean_string = str.split.join.split("")

  clean_string.each_with_index { |letter, index|
    count[letter] = count[letter].to_i + 1
  }
  p count
end
