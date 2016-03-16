require './rpn_error'

class RPNCalculator
  OPERATORS = /^[\+\-\*\/]$/
  NUMBERS = /^[-+]?[0-9]*\.?[0-9]+$/
  def self.do_magic(input)
    raise RPNError if !self.valid?(input)
    stack = []

    input.each do |i|
      if !i.match(OPERATORS)
        stack.push(i)
      else
        number_2 = stack.pop.to_f
        number_1 = stack.pop.to_f
        value = number_1.method(i).(number_2)
        stack.push(value)
      end
    end
    result = stack[0]
    raise RPNError if stack.length != 1 || !result.to_s.match(NUMBERS)
    return result
  end

  def self.valid?(input)
    numbers = input.select {|x| x.match(NUMBERS) }
    operators = input.select {|x|x.match(OPERATORS) }
    invalid = input.reject {|x| x.match(NUMBERS) || x.match(OPERATORS) }

    (numbers.length == operators.length+1) && invalid.length
  end
end
