#1
def ordered_word?(word)
  letters = word.split("")

  letters = letters.map { |letter|
    letter = letter.ord
  }

  if letters == letters.sort
    return true
  else
    return false
  end
end

#2
def encrypt(str)
  debugger

  output = []

  if str == ""
    return output
  else
    letters = str.split("")

    n = letters.count-1

    idx=0
    idx2=0
    while idx2 < n do
      output << [letters[idx2],1]

      while letters[idx2] == letters[idx2+1] do
        output[idx][1] +=1
        idx2+=1
      end
      idx+=1
    end
    return output
  end
end

#3
def nearby_words(str, arr)
    output = []

    letters = str.split("")

    n = letters.count-1

    clean_words = arr.select { |word| word.length == str.length}

    clean_words.each { |word|
        word_letters = word.split("")
        (0..n).each do |i|
            if word_letters.delete_at(i) == letters.delete_at(i)
                output << word
            end
        end
    }
    return output.uniq
end
