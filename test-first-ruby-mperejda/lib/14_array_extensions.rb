class Array

  def sum
    self.empty? ? 0 : self.inject(:+)
  end

  def square
    self.empty? ? self : self.map { |number| number**2 }
  end

  def square!
    self.empty? ? self : self.map! { |number| number**2 }
  end
end
