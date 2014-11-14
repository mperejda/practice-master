#1
def reverse(str)
  str.reverse
end

#2
def factorial(n)
  (1..n).inject(:*)
end

#3
def longest_word(str)
  words = str.split

  puts words.max
end

#4
def sum_nums(n)
  (1..n).inject(:+)
end

#5
def time_converters(min)
  hours = minutes % 60
  minutes = min - (hours*60)

  puts "#{hours}: #{minutes}"
end

#6
def palindrome?(str)
  if str == str.reverse
    return true
  else
    retutn false
  end
end

#7
def nearby?(str)
  letters = str.split("")
  a=[]
  z-[]

  letter.each_with_index { |letter, index|
    if letter == "a"
      a << index
    end
  }

  letters.each_with_index { |letter, index|
    if letter == "z"
      z << index
    end
  }
  a.each {|idx1|
    z.each { |idx2|
      if (idx1-idx2).abs < 4
        return true
        break
      end
    }
  }
  return false
end

#8
def two_sums(arr)
  num_pair_indices=[]

  arr.each_with_index { |num1, idx1|
    arr.each_with_index { |num2, idx2|
      if num1+num2 == 0
        num_pair_indices << [num1, num2].sort
      end
    }
  }

  num_pair_indices.uniq
end

#9
def power_of_two?(num)
  if num == 0
    return false
  elsif Math.sqrt(num)%1 == 0
    return true
  else
    return false
  end
end

#10
def third_greatest(arr)
  arr.sort

  2.time do
    arr.pop
  end

  arr.max
end

#11
def common_letter(str)
  str.gsub!(" ", "")

  letters = str.split("")

  counter = {}

  letters.each { |letter|
    counter[letter] = letters.count(letter)
  }

  max_count = counter.values.max

  puts counter.key(max_count)
end

#12
def dasherize(num)
  nums = str.split("")

  nums = nums.each_index.map {|num, idx|
    if num % 2 ==1
      if idx == 0
        num = num + "-"
      else
        num = "-" + num
      end
    end
  }

  nums.join
end

#13
def cap_words(str)
  words = str.split

  words = words.map { |word|
    word[0] = word[0].upcase
  }

  puts words.join(" ")
end

#14
def scramble(str, arr)
  letters = str.split
  new_letters = Array.new(arr.count)
  index = Hash[new_letters.zip arr]

  index.each { |letter, idx|
    new_letters[idx] = letter
  }
  new_letters.join
end



#15
def is_prime(num)
  if num == 0
    return false
  elsif num == 1
    return true
  elsif
    (2..num-1).each { |i|
      if num%i == 0
        return false
        break
      end
    }
    return true
  end
end

#16
def nth_prime(n)
  i=1
  primes = []

  while primes.count < n
    if is_prime?(i)
      primes << i
      i+=1
    end
  end

  puts primes.max
end

#17
def longest_palindrome(str)

  letters = str.split

  sub_strings=[]

  k= letters.count -1
  k.times do
    n=0
    i=letters.count-1
    while n < i
      sub_strings << letters[0..n].join
      n+=1
    end
    letters = letters.shift
  end

  palindromes = sub_strings.select {|str|
    palindrome?(str)
  }

  palindromes.uniq.max
end

#18


#00
def nearest_larger(arr, idx)
  largers=[]

  arr.each_with_index { |num, index|
    if arr[index] > arr[idx]
      largers << index
    end
  }

  p largers
  p arr

  puts largers.min
end

#01
def no_repeats?(year)
    nums = year.to_s.split

    if nums == nums.uniq
        return true
    else
        return false
    end
end

def no_repeats(year1, year2)
    outputs = (year1..year2).select { |year|
        no_repeats?(year)
    }
    p outputs
end

no_repeats(1234, 1234)
no_repeats(1980, 1987)

#02
def letter_count(str)

    letters = str.split.join.split("").uniq

    p letters

    index = {}
    letters.each { |letter|
       index[letter] = str.count(letter)
    }

    p index
end

letter_count("cat")
letter_count("cats are fun")

#03
def ordered(str)

    letters = str.split("")

    index = {"a"=>0, "e"=>1, "i"=>2, "o"=>3, "u"=>4}
    vowels=[]

    letters.each { |letter|
        if index.include?(letter)
            vowels << letter
        end
    }

    vowels = vowels.map { |v| v = index[v]}

    if vowels == vowels.sort
        return true
    else
        return false
    end
end

def ordered_words(str)
  if str.split("").include?(" ")
    words = str.split

    new_str = ""

    words.each do |word|
      if ordered(word)
        new_str = new_str + " " + word
      end
    end

    new_str[0] = ""
  elsif ordered(str)
      new_str = str
  else
    new_str=""
  end
  p new_str
end

#04
def wonky_coins (n)
    if n == 0
        return 1
        break
    elsif
        coins = [n/2, n/3, n/4]

        while coins.count != coins.count(0)
            non_zero_coins = coins.select { |coin|
                coin != 0
            }

            coins.delete_if { |coin| coin !=0 }

            non_zero_coins.each { |coin|
                coins << [coin/2, coin/3, coin/4]
            }

            coins = coins.flatten
        end
    end

    p coins.count
end

wonky_coins(1)
wonky_coins(0)
wonky_coins(5)

#05
def morse_code_word(str)
    dict = {letter : morse_lettter}

    letters = str.split("")

    letters = letters.map { |letter| letter = dict[letter] }

    letters = letters.join(" ")
end

def morse_encoder(str)
    if str.inlclude?(" ")
        words = str.split

        words.map { |word|
            word = morse_encode(word)
        }

        puts words.join("  ")
    else
        morse_encode(str)
    end
end
