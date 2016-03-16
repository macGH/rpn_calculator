require './rpn_calculator'
require 'readline'

puts "Welcome to RPN Calculator"
puts
puts "Enter your postfix equation, one number or operator (+, -, * or /) at a time followed by <return>."
puts "When done, enter 'q' or ctrl-D"
puts

equation = []
loop do
  input = Readline.readline(">> ")
  if input.class != String || input.downcase == "q"
    break;
  else
    equation << input
  end
end

puts "Your postfix equation of #{p equation} = #{RPNCalculator.do_magic(equation)}"
