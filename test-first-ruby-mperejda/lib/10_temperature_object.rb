class Temperature
  attr_accessor :type, :temperature

  def initialize(options={})
    @type = options.keys.first.to_s
    @temperature  = options.values.first.to_i
  end

  def in_fahrenheit
    self.type == "f" ? @temperature : ((@temperature *1.8) + 32)
  end

  def in_celsius
    self.type == "c" ? @temperature : ((@temperature -32) / 1.8).round
  end

  def Temperature.from_celsius(temperature)
    Temperature.new(:c=>temperature)
  end

  def Temperature.from_fahrenheit(temperature)
    Temperature.new(:f=>temperature)
  end

end

class Celsius < Temperature
  attr_accessor :type, :temperature

  def initialize(temperature)
    @temperature = temperature
    @type = "c"
  end

  def ctof
    Fahrenheit.new(self.in_fahrenheit.to_i)
  end

end

class Fahrenheit < Temperature
  attr_accessor :type, :temperature

  def initialize(temperature)
    @temperature = temperature
    @type = "f"
  end

  def ftoc
    Celsius.new(self.in_celsius)
  end
end
