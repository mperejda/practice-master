def my_uniq(arr)
  output = []

  arr.each { |e|
    unless output.include?(e) then
      output << e
      end
  }
  return output
end
