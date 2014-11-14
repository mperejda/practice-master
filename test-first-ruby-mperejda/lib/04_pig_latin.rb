def translate(string)

  #find characters
  characters = string.split("")

  #find/store index of capital letters
  # characters.delete(" ")
  capital_index=[]
  characters.each_with_index { |letter, index|
    if letter == letter.upcase && ("a".."z").include?(letter.downcase)
      capital_index << index
    end
  }

  #map to downcase
  string = string.downcase

  #split & map each word to pig latin
  words = string.split
  words = words.map { |word|
    vowels = %w(a e i o u )
    if vowels.include?(word[0])
      word += "ay"
    else
      #if word starts with "qu" treat quantity as vowel
      suffix = word[0..1] == "qu" ? "quay" : word[/[^aeiou]+/] + "ay"

      #slice after "qu" for special case
      new_word = word[0..1] =="qu" ? word.slice(2..-1) : word.scan(/[aeiou].*/).join

      #treat quantity "qu" as consonant elsewhere and modify new_word & suffix accordingly
      if word[/[^aeiou]+/][-1] == "q" && new_word[0] == "u"
        suffix = word[/[^aeiou]+/] + "u" + "ay"
        new_word[0]=""
      end

      word = new_word + suffix
    end
  }
  pig_latin = words.join(" ")

  #map new letter at capital index to letter.upcase
  capital_index.each { |index|
    pig_latin[index] = pig_latin[index].upcase
  }


  #fix punctuation
  #assuming one punctuation mark per sentence, no commas
  pig_words = pig_latin.split(" ")

  adjusted_pig_words =  pig_words.map { |word|

    if !word.scan(/\.|\?|!/).empty?
      character = word.scan(/\.|\?|!/).join
      word = word.delete(character)
      word = word + character
    else
      word
    end
  }

  #Translated to pig latin, capital letter at same indices, punctuation follows same word
    adjusted_pig_words.join(" ")
end
