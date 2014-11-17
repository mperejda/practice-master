def rpn_split(string)

  characters = string.split("")
  slice_indicies = []
  chunked_strings=[]

  characters.each_with_index { |character, index|
    if ["*", "-", "+", "/"].include?(character) && !["*", "-", "+", "/"].include?(characters[index+2]) && character != " "
     slice_indicies << index
    end
  }

  i=0
  slice_indicies.each { |index|
    i == 0 ? chunked_strings << string[0..index] : chunked_strings << string[slice_indicies[i-1]+2..index]
    i+=1
  }

  chunked_strings

end
