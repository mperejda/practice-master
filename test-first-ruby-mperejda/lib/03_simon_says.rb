def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 1)
  times == 1 ? "#{string} #{string}" : "#{string}#{(" " + string)*(times-1)}"
end

def start_of_word(word, i)
  word[0..i-1]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  little_words = %w(and the over)
  words = string.split
  words.each_with_index do |word, index|
    little_words.include?(word) ? (index == 0 ? word[0] = word[0].upcase! : word ) : word[0] = word[0].upcase!
  end

  words.join(" ")
end
