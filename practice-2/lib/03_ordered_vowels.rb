def ordered_vowel_word?(word)
 debugger

 letters = word.split("")
  vowels = []

  index = {"a"=>0, "e"=>1, "i"=>2, "o"=>3, "u"=>4}

  letters.each { |letter|

    if index.include?(letter)

      vowels << letter
    end
  }

  vowels.map { |v| v = index[v]}
  if vowels == vowels.sort
    true
  end
end


def ordered_vowel_words(str)
 debugger

  if str.split("").include?(" ")
    words = str.split
    new_string = ""

    words.each do |word|
       if ordered_vowel_word?(word)
         new_string = new_string + " " + word
       end
    end

     new_string[0]=""

     p new_string

  else
   if ordered_vowel_word?(str)
     p str
   else
     ""
   end
  end
end
