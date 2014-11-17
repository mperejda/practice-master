class RPNCalculator
  attr_accessor :calculator

  def initialize
    @calculator=[]
  end

  def value
    @calculator.first
  end

  def push(number)
      @calculator.unshift(number)
  end

  def plus
    if @calculator.empty?
      raise Exception.new("calculator is empty")
    end
    new_value = @calculator[0..1].inject(:+)
    2.times do
      @calculator.shift
    end
    @calculator.unshift(new_value)
    new_value
  end

  def minus
    if @calculator.empty?
      raise Exception.new("calculator is empty")
    end
    new_value = @calculator[1]-@calculator[0]
    2.times do
      @calculator.shift
    end
    @calculator.unshift(new_value)
    new_value
  end

  def divide
    if @calculator.empty?
      raise Exception.new("calculator is empty")
    end
    new_value = @calculator[1].to_f / @calculator[0].to_f
    2.times do
      @calculator.shift
    end
    @calculator.unshift(new_value)
    new_value
  end

  def times
    if @calculator.empty?
      raise Exception.new("calculator is empty")
    end
    new_value = @calculator[0] * @calculator[1]
    2.times do
      @calculator.shift
    end
    @calculator.unshift(new_value)
    new_value
  end

  def tokens(string)
    token_map = {"+" => :+, "-" => :-, "*"=> :*, "/"=> :/}
    tokens = string.split
    tokens = tokens.map { |token|
    token = token_map.include?(token) ? token_map[token] : token.to_i
    }
  end

  def evaluate(string)

    #rpn string split
    characters = string.split("")
    slice_indicies = []
    chunked_strings=[]

    characters.each_with_index { |character, index|
      if ["*", "-", "+", "/"].include?(character) && !["*", "-", "+", "/"].include?(characters[index+2]) && character != " "
       slice_indicies << index
      end
    }

    i=0
    slice_indicies.each { |index|
      i == 0 ? chunked_strings << string[0..index] : chunked_strings << string[slice_indicies[i-1]+2..index]
      i+=1
    }

    #do operations for all strings
    value=0
    chunked_strings.each_with_index do |string, index|

      operators = [:+, :-, :*, :/]
      order_of_operations = []
      tokens = self.tokens(string)  #self.tokens


      #find operation type and index
      tokens.each_with_index { |token, index|
        if operators.include?(token)
          order_of_operations << token
        end
      }

      #sanitize tokens
      tokens.delete_if { |token| operators.include?(token) }

      #instantiate new calculator and do operations
      rpn_calculator =  RPNCalculator.new
      rpn_calculator.calculator = tokens.reverse

      order_of_operations.each { |operation|
        if operation == :+
          rpn_calculator.plus
        elsif operation == :-
          rpn_calculator.minus
        elsif operation == :*
          rpn_calculator.times
        elsif operation == :/
          rpn_calculator.divide
        end
      }

      value = rpn_calculator.value.to_s

      (chunked_strings.count > 1 && string != chunked_strings[-1]) ? chunked_strings[index+1] = value + " " + chunked_strings[index+1] : chunked_strings

    end
    value.to_f
  end

end
