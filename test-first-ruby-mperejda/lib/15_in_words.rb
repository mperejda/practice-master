class Fixnum

  def in_words
    numbers = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,30,40,50,60,70,80,90,100]
    numbers_strings= numbers.map { |number| number.to_s}
    words =%w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty thirty forty fifty sixty seventy eighty ninety hundred)

    map = Hash[numbers.zip words]
    number = self.to_s


    if numbers.include?(self) && self < 100
      map[self]
    elsif self < 100
      map[(number[0].to_i)*10] + " " + map[number[1].to_i]
    else
      map[(number[0].to_i)] + " " + map[(number[0].to_i)*100]

      #+ (numbers.include?(number[0..1].to_i) ? map[number[0..1].to_i] : map[(number[0].to_i)*10] + " " + map[number[1].to_i] )
    end
  end

end
