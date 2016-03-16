require './rpn_calculator'

puts "Welcome to RPN Calculator"
puts
puts "Enter your postfix equation, one number or operator at a time followed by <return>."
puts "When done, enter 'q' or EOF"
puts

equation = []
loop do
  p "=> "
  input = gets.chomp
  if input.downcase == "q" 
    break;
  else
    equation << input
  end
end

puts "Your postfix equation of #{p equation} = #{RPNCalculator.do_magic(equation)}"
