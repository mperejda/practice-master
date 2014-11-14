#Practice Problems I
#1
def sum_of_sums (n)
  a = (1..n).reduce(:+)

  puts a
end
sum_of_sums(7)

def time_converter(minutes)
  h = (minutes / 60).to_i
  m =  minutes - (h*60)

  puts "#{h}:#{m}"
end

#2
puts time_converter(95)

def vowel_count(string)
  v= ["a","e","i","o","u"]
  count = 0
  v.each {
    |v| count = count + string.count("#{v}")
  }
  puts count
end

vowel_count("what is my name")


#6
def palidrome?(string)
  if string == string.reverse
    #sting
    puts "True"
  else
    puts "false"
  end
end

palidrome?("aba")

def close_to_a?(string)
  s = string.split(" ").join.downcase.split("")
  n = s.count-1
  a = Array.new
  z = Array.new

  (1..n).each { |j|
    if s[j] == "a"
    a<<j
    end
  }
  p a

  (1..n).each { |i|
    if s[i] == "z"
      z<<i
    end
  }

  p z

  a.each { |i|
    z.each { |j|
      if (i-j).abs <= 3
        puts "Truth fo sho"

        break
      end
    }
     if (i-j).abs <= 3
        puts "Truth fo sho"

        break
      end
  }
end

close_to_a?("abcz")

def sums(a)
  o= Hash.new
  a.each { |i|
    a.each { |j|
    if i+j == 0
      puts "#{a.index(i)} and #{a.index(j)}"
       o[a.index(i)] = a.index(j)


    end
  }
}

puts o
end

sums([-1,1])

def power(num)
  if num == 1
    puts true
  elsif num == 0
    puts false
  elsif Math.sqrt(num)%2 == 0
    puts true
  else
    false
  end
end

power(78)

def third(a)
  a.sort

  a.pop

  a.pop

  v= a.max

  puts v
end

def acount(string)
  clean_string = string.split.join.downcase
  letters = clean_string.split("")
  counter = Hash.new

  letters.each {
|l| counter[clean_string.count("#{l}")] = l

  }
  puts counter.keys.max

  puts counter[counter.keys.max]
end



acount("Matt Perejda")


def dash (num)
  n = num.to_s
  count = n.split("")

  count.each {
    |i| if i%2 == 1
      if count.index(i) == 0
        i.gsub!(/i/, 'i-')
      else
        i.gsub!(/i/, '-i')
      end
    end
  }
end

dash(303)

#13

def cap_words(s)
  a = s.split

  a.each {
    |w| w[0] = w[0].upcase!
  }

  p a.join(" ")
end

 cap_words("this is a sentence")

 cap_words("mike bloomfield")

#14
def ceasar_cipher (offset, string)
i = 0
l = string.length
n = 122-offset

  while i < l
      if (string[i].ord < n) && (string[i] != 32 )

        string[i] =(string[i].ord + offset).chr

      elsif (string[i].ord > n) && (string[i] != 32 )
          w= string[i].ord + offset
        string[i] =(97 + w%97%26).chr
      end

      i+=1
  end
  p string
end

ceasar_cipher (3, "abc")

ceasar_cipher (3, "abc xyz")






#15

def is_prime?(n)

  if n <= 1
    return false
  end

  i = 2

  while i < n
    if n%i == 0
      return false
    end
    i += 1
  end

  return true
end

is_prime?(5)


#16
def nth_prime(n)
  prime_num = 0

  i = 2
  while true
    if is_prime?(i)
      prime_num += 1
      if prime_num == n
        return i
      end
    end

    i += 1
  end
end

nth_prime(3)


#17

def lp(string)

ss=Array.new
p=Array.new
n = string.length-1

  n.times do
    idx1=0
    idx2 = 0

    while idx1 < string.length
      ss << string[0..idx1]

      idx1 = idx1+1
    end

  #p ss

  string = string.split("")

    if idx2%2 == 0
      string.shift
    else
      string.pop
    end
  string= string.join

  #p string
end

ss.each {
|c| if c == c.reverse
p << c
end
p = p.sort_by {|x| x.length}
}

p p.last

end

lp("abcbdeffe")

lp("abba")

lp("abcbd")


#18
def gcf( n1, n2)
  a= Array.new
  b= Array.new
  r= Array.new

  (1..n1).to_a.each {
    |i| if n1 % i == 0
      a << i
    end
  }

(1..n2).to_a.each {
    |i| if n2 % i == 0
      b << i
    end
  }

  r = a&b

  puts r.max
end

gcf(3,9)

gcf(16,24)

gcf(3,5)

#19
def scramble_string(string, positions)

  #array of chars
  s= string.split.join.split("")

  #associate chatr w/ respectiv idx
  master = Hash[s.zip positions]

  output = s

  #map keys (chars) to values (arr idx) in new Array
  master.each {
    |k,v| output[v] = k
  }
  puts output.join
end

scramble_string("abcd", [3,1,2,0])

#20
def num_repeats(string)
  letters = string.split("")
  uniq_letters= letters.uniq
  counter = Array

  idx=0

  uniq_letters.each {
    |l| if letters.count("#{l}") > 1
    idx = idx+1
      end
  }
  puts idx

end

num_repeats("aabbcc")
num_repeats("aaa")
num_repeats("abab")
num_repeats("cadac")
num_repeats("abcde")



#Code Challenge I



#1
def crazy_sum(array)

  idx = 0

  array.each {
    |a| array[idx] = a * array.index(a)

    idx +=1

  }

  output = array.inject(:+)

  puts output
end

crazy_sum([2])
crazy_sum([2,3])
crazy_sum([2,3,5])
crazy_sum([2,3,5,2])

#2
def square_nums(num)
  squares = 0
  idx = 1

  while true
    if (idx * idx) < num
      squares += 1
      idx += 1
    elsif (idx * idx) >= num
      return squares
    end
  end
end

square_nums(5)
square_nums(10)
square_nums(25)

#3
def crazy_nums(max)
  ints = (1..max-1).to_a

  output = Array.new

  ints.each {
    |i| if ((i%3 == 0) && (i%5 !=0)) || ((i%3 != 0) && (i%5 == 0))
        output << i
      end
    }

    p output
end

crazy_nums(3)
crazy_nums(10)
crazy_nums(20)

#Ruby Monk Excercises

#Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers that can be formed with those digits.
def number_shuffle(n)
  nums = n.to_s.split("")

  o = Array.new
  i = (1..n.to_s.length).inject(:*)

  while o.count < i
    o << nums.shuffle.join.to_i

    o = o.uniq
  end
  return o.sort

end

number_shuffle(123)

#Coding Challenge II: Prep Work

#uniq

def muniq(array)
    uniqs_array= []

    array.each { |x|
    if array.count(x) < 2
         if uniqs_array.include?(x) == false
             uniqs_array << x
         end
     end
 }
 p uniqs_array
end

#pair of arr elements sum to 0?
def zero_sum(array1, array2)
    array1.each { |num1|
        array2.each { |num2|

        if num1 + num2 == 0
            return true
        end
    }
}
p false
end

zero_sum([1,2,3],[-1,2,3])

#tower of hanoi w/ 2 pieces

a = (1..2).to_a.reverse
b=[]
c=[]

piles = [ a,b,c]

while c != [2,1]

    p "Choose a pile (1, 2, or 3) to select a disc from"

    pick_pile = gets.chomp.to_i.-1

    p "Where do you want to put the disk? (one of the other piles)"
    put_pile = gets.chomp.to_i.-1

    if  piles[put_pile].empty?

        piles[put_pile] << piles[pick_pile].pop

    elsif piles[pick_pile].last < piles[put_pile].last

        piles[put_pile] << piles[pick_pile].pop

    else
        p "You can't place a larger disk on a smaller disk"
    end
end

p "Solved!"

#matrix transpose

def transpose(array)
    n = array.count-1
    dim = array.count

    output = Array.new(dim) { Array.new(dim) { 0 } }

    (0..n).each { |i|
        (0..n).each { |j|
            output[i][j] = array[j][i]
        }
    }
    p output
end

transpose( [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])

#strings

#to_s

def num_to_s (num, base)

    keys = (0..15).to_a

    values = (0..9).to_a.map { |x| "#{x}" } << "A" << "B" << "C" << "D" << "E" << "F"

   base_dictionary = Hash[keys.zip values]

   string = ""



   i= 0
    while (num / base**i) > 0

        n = (num / base**i) % base

        string = base_dictionary[n] + string

        i+=1
    end

    p string
end

num_to_s(4,2)

num_to_s(123,10)
num_to_s(8,2)
num_to_s(6,2)
num_to_s(10,3)
num_to_s(10,11)

#caesar cipher II

def ceasar_cipher(string, offset)
    chars = string.each_char.to_a

    n= 122-offset

    new_string=""

    chars.each { |char|
        if (char.ord != 32) && (char.ord <= n)
            new_string = (char.ord + offset).chr + new_string
        else (char.ord > n) && (char.ord != 32)
            new_string = (char.ord + offset -26 ).chr + new_string
        end
    }
    p new_string.reverse
end

ceasar_cipher("hello", 3)


#hashes

set_add_el({}, :x)
    {}[:x] = true
end

set_remove_el({:x => true}, :x)
    {:x => true}.delete(:x)
end

set_list_els({:x => true, :y => true})

    p {:x => true, :y=> true}.keys
end

set_member?({:x => true}, :x)

    if {:x => true}.values.include?(true)
        p true
    else
        p false
    end
end

set_union({:x => true}, {:y => true})
    p {:x => true}.merge({:y => true})
end

H= {1=>"1", 2=>"2"}
G= {1=>"1", 5=>"5"}

#union
G.each { |k,v|
    H.each { |a,b|

    if (a == k) && (v == b)
        p "#{a} , #{b} union"
    end
    }
}

#uniqs
G.each { |k,v|
    if !(H.include?(k)) || H[k] != G[k]
        p "#{k} and #{v} minus"
    end
    }

#rehashing

r = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }

values = r.values
keys = r.keys

nk = []

keys.each {
    |key| a = key.to_s.ord+1

    nk << a.chr

}

p nk

nh = Hash[nk.zip values]

p nh

#find squares in (1..100)
 (1..100).select do |i|
    Math.sqrt(i)%1 == 0
  end

  #map array element i to 2*i

  def new_arr(a)
    a.map {
      |e| e*2
    }
  end


  #median, avg if even

  def median(arr)
    count = arr.count

    odd_count = count/2

    even_count = (count/2)-1

    if count%2 == 1
      odd_count.times do arr.pop end

      odd_count.times do arr.shift end

        puts arr
    elsif count %2 == 0
      even_count.times do arr.pop end

      even_count.times do arr.shift end

      puts (arr[0].to_f + arr[1])/2
    end
  end

  #concatenate sentence w/ inject

  array_of_words.inject do |current, nxt|
    current + " " + nxt
  end

#rps

def rps(string)

  options = ["rock", "paper", "scissor"]

  computer_choice = options.shuffle[0]

  if string == "rock"
    if computer_choice == "rock"
      puts "it's a draw"
    elsif computer_choice == "paper"
      puts "you lost..."
    elsif computer_choice == "scissor"
      puts "you win!"
    end
  end

  if string == "paper"
    if computer_choice == "rock"
      puts "you win!"
    elsif computer_choice == "paper"
      puts "draw"
    elsif computer_choice == "scissor"
      puts "you lost..."
    end
  end

  if string == "scissor"
    if computer_choice == "rock"
      puts "you lost..."
    elsif computer_choice == "paper"
      puts "winner!"
    elsif computer_choice == "scissor"
      puts "just a draw"
    end
  end

end


#swingers mixer, same roles, dif partners

def swingers (arr)
  count = arr.count

  new_couples = Array.new(count) { Array.new(2) }

  people = arr.join(" ").split

  men = []
  women=[]

  people.select do |person|
      if people.index(person)%2 == 1

          women << person
    else
        men << person
    end
  end

  women = women.shuffle

  (0..count-1).each do |i|
      new_couples[i][0] = men[i]
      new_couples[i][1] = women[i]
  end

  p new_couples

end


swingers([
  ["Clyde", "Bonnie"],
  ["Paris", "Helen"],
  ["Romeo", "Juliet"]
])

#fav num

my_favorite_number = 42
numbers_to_search = [1, 5, 7, 4, 8, 2]

i = 0
while i < numbers_to_search.count
  current_number = numbers_to_search[i]

  if my_favorite_number == current_number
    puts "List contains favorite number!"
    break
    # end the method once the break line is reached
  end

  i += 1
end

p "awwwww man, didn;t find it..."

#num to words


#find num >250 & %7
i=0

while true
  if (i>25 && i%7 == 0)
     p i
     break
   end
   i+=1
end

#print factors of alll nums (1..100)

(1..100).each do |num|
  (1..num).each do |factor|
    if num%factor == 0
      puts "#{factor} is a factor of #{num}"
    end
  end
end

#find all substrings

def sub_strings(string)

    n = string.length
    substrings = []

    n.times do |i|
        k=0
        while k < string.length
            substrings << string[0..k]
            k+=1
        end
        string = string.split("")

        string.shift

        string = string.join
    end

    p substrings.uniq
end

#is_sorted and bubble_sort

def is_sorted?(array)
    n = array.count-2

    (0..n).each do |i|
        if  array[i] > array[i+1]
            return false
        end
    end
end

is_sorted?([4,3,2,1])

def bubble_sort(array)
    n= array.count-2

    while is_sorted?(array) == false
        (0..n).each do |i|
            if  array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
            end
        end
    end
    return array
end

bubble_sort([4,3,2,1])


#sample TDD

class String
  def titleize
    self.gsub(/\A|\s)w/) { |letter| letter.upcase}
  end
end

require "test/unit"

class TestTitleize < Test::Unit::TestCase
  def test_basic
    assert_equal("This Is A Test", "this is a test".titleize)
    assert_eqaul("another Test 1234", "another test 1234".titleize)
    assert_equal("We're Testing", "we're testing".titleize)
  end
end
