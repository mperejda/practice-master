def wonky_coins(n)
  debugger

  if n == 0
    coins = [0]
  else
    coins =  [n/2, n/3, n/4]

    while coins.count(0) != coins.count do

      non_zeros = coins.select { |coin| coin != 0
      }

      non_zeros.each { |coin|
          coins << coin/2 << coin/3 << coin/4
        }
      non_zeros.count.times do
        coins.shift
      end
    end
  end
  return coins.count
end
