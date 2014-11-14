  #1
  #Find the sum of all the multiples of 3 or 5 below 1000.

  nums = (1...1000).select { |x| x%3 == 0 || x%5 == 0}

  puts nums.inject(:+)


  #2
  #Find the sum of the even-valued terms in the Fibonacci sequence whose values do not exceed four million.

  fibs = [1,2]
  c = fibs.count-1

  while fibs.max < 4000000
    new_fib = fibs[c] + fibs[c-1]

    fibs << new_fib
  end

  even_fibs = fibs.select { |fib| fib%2 == 0}

  puts even_fibs(:+)


#3
#What is the largest prime factor of the number 600851475143 ?

def is_prime?(num)
  if num = 0
    return false
  elsif num == 1
    return true
  elsif
    (2..num-1).each { |x|
      if num % x == 0
        return false
        break
    }
    return true
  end
end


def largest_prime_factor(num)
  #all factors
  factors = (1..num).select { |x| num%x == 0}

  #prime factors
  prime_factors = factors.select { |x| is_prime?(x) }

  puts prime_factors.max
end


#4
#Find the largest palindrome made from the product of two 3-digit numbers.

range = (100...1000).to_a

palindromes=[]

range.each |x| {
  range.each {|y|
    if (x*y).to_s == (x*y)to_s.reverse
      palindromes << (x*y)
    end
  }
}

p palindromes.uniq.max



#5
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

****UNFINISHED***

num=1
while true
  (1..20).each { |i|
    if num%i != 0
      num+=1
      retry
    else
      next
    end
  }
  puts num
  break
end

#6
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

range = (1..100).to_a

sum_of_squares = range.map { |x| x**2}.inject(:+)

square_of_sums = (range.inject(:+))**2

puts square_of_sums - sum_of_squares

#7
#What is the 10 001st prime number?

def is_prime?(num)
  if num < 1
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

primes = []

i=1
while primes.count < 100001
  if is_prime?(i)
    primes << i
    i+=1
  end
end

puts primes.max

#8
#Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

num =73167176531330624919225119674426574742355349194934
96983520312774506326239578318016984801869478851843
85861560789112949495459501737958331952853208805511
12540698747158523863050715693290963295227443043557
66896648950445244523161731856403098711121722383113
62229893423380308135336276614282806444486645238749
30358907296290491560440772390713810515859307960866
70172427121883998797908792274921901699720888093776
65727333001053367881220235421809751254540594752243
52584907711670556013604839586446706324415722155397
53697817977846174064955149290862569321978468622482
83972241375657056057490261407972968652414535100474
82166370484403199890008895243450658541227588666881
16427171479924442928230863465674813919123162824586
17866458359124566529476545682848912883142607690042
24219022671055626321111109370544217506941658960408
07198403850962455444362981230987879927244284909188
84580156166097919133875499200524063689912560717606
05886116467109405077541002256983155200055935729725
71636269561882670428252483600823257530420752963450

products=[]

num = num.to_s.split("")

n=0
k=12
r =(n..k).to_a

while k < num.count-1
  products << r.inject(:*)
  n+=1
  k++1
end

puts products.max

#9
#There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.
triplets=[]
a=1
b=1
c=1
range = (1..998)

range.each { |x|
  a=x
  range.each { |y|
    b=y
    range.each { |z|
      c=z
      if a**2 + b**2 == c**2
        triplets << [a,b,c]
      end
    }
  }
}

triplets.each { |triplet|
  if triplet.inject(:+) == 1000
    return triplet.inject(:*)
    break
  end
}

#10
#Find the sum of all the primes below two million.

def is_prime?(num)
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

primes = []
n=1

while primes.count < 2e6-1
  if is_prime?(n)
    primes << n
  end
  n+=1
end

puts primes.inject(:+)

#11
#What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20×20 grid?

a= "grid"

i=0

diagonal= []
while diagonal.count < 20
  diagonal << a[i][i]
  i+=1
end

n=0
k=3

products << []

while k < 19
  products << diagonal[n..k].inject(:*)
end

puts products.max

#12
#Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

num = "5000 digit num"

i=0
j=49

num = num.to_s

sub_nums=[]

while j < 4999
  subnums << num[i..j]
  i+=50
  j+=50
end

sum = sub_nums.inject(:+)

puts sum[0..9]

#13
#
