# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#

def larger_integers(arr, idx)
  arr.find_all {
    |i| arr[idx] < i
  }
end

def nearest_larger(arr, idx)
  
  integers = larger_integers(arr, idx)
  
  if integers.empty?
    return nil
  else

    index= arr.count-1
  

    integers.each do |integer|
      if arr.index(integer) <= index
        index = arr.index(integer)
      end
    end
    return index
  end
end
