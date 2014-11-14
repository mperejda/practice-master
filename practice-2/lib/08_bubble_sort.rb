def is_sorted?(arr)
  count = arr.count-2

  (0..count).each { |i|
    if arr[i] > arr[i+1]
      return false
      break
    end
  }
  true
end

def bubble_sort(arr)
  debugger

  if arr.empty? || arr.count == 1
    return arr
  else
    #while arr != arr.sort
    until is_sorted?(arr) do
    (0..arr.count-2).each { |i|
      while arr[i] > arr[i+1] do
        arr[i], arr[i+1] = arr[i+1], arr[i]
      end
    }
    end
    return arr

  end
end
