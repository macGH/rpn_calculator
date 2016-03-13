require './rpn_error'

class RPNCalculator

  def self.do_magic(input)
    raise RPNError if !self.valid?(input)
  end

  def self.valid?(input)
    numbers = input.select {|x| x.match(/[-+]?[0-9]*\.?[0-9]+/)}
    operators = input.select {|x|x.match(/[\+\-x\*\/]/) }
    invalid = input.reject {|x| x.match(/[-+]?[0-9]*\.?[0-9]+/) || x.match(/[+-x*\/]/)}

    puts "Number of nums: #{numbers.count} #{input.select {|x| x.match(/[-+]?[0-9]*\.?[0-9]+/)}}"
    puts "Number of ops: #{operators.count} #{input.select {|x|x.match(/[\+\-x\*\/]/) }}"
    puts "Number of wrong: #{invalid.count} #{input.reject {|x| x.match(/[-+]?[0-9]*\.?[0-9]+/) || x.match(/[+-x*\/]/)}}"
    puts
    puts

    (numbers.length == operators.length+1) && invalid.length
  end
end
