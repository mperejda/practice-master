def word_unscrambler(str, words)
  anagrams=[]

  words.each { |word|
      s1= word.split("")
      s2= str.split("")

      if s1.sort == s2.sort
        anagrams << word
      end
  }
  p anagrams
end
