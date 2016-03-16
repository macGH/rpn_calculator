require './rpn_error'

class RPNCalculator
  OPERATORS = /^[\+\-x\*\/]$/
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
    raise RPNError if !result.to_s.match(NUMBERS)
    return stack[0]
  end

  def self.valid?(input)
    numbers = input.select {|x| x.match(NUMBERS) }
    operators = input.select {|x|x.match(OPERATORS) }
    invalid = input.reject {|x| x.match(NUMBERS) || x.match(OPERATORS) }

    puts "Number of nums: #{numbers.count} #{input.select {|x| x.match(NUMBERS)}}"
    puts "Number of ops: #{operators.count} #{input.select {|x|x.match(OPERATORS) }}"
    puts "Number of wrong: #{invalid.count} #{input.reject {|x| x.match(NUMBERS) || x.match(OPERATORS)} }"
    puts
    puts

    (numbers.length == operators.length+1) && invalid.length
  end
end
