def zero_sum (arr1, arr2)
  output = []

  arr1.each { |e1|
    arr2.each { |e2|
      if e1+e2 == 0
        output << [e1,e2].sort
      end
    }
  }

  return output.uniq

end


