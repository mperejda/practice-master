def my_transpose(arr)
  debugger

    new_arr = Array.new(3) {Array.new(3)}
    n = arr.count-1
    
    (0..n).each { |i|
        (0..n).each { |j|
           new_arr[i][j] = arr[j][i]
        }
    }
    p new_arr
end
