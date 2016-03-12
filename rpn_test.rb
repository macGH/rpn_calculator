require 'minitest/autorun'
require 'minitest/pride'

require './rpn_calculator'
require 'byebug'


class RPNCalculatorTest < Minitest::Test


  def test_class_exist
    assert RPNCalculator
  end

  def test_incorrect_input

    bad_input_1 = [5, 2, 3, "-"]
    bad_input_2 = [3, 2, "$"]
    bad_input_3 = [5, 3, "*", 2, 1, 1, "+"]

    assert_raises RPNCalculator.compute(bad_input_1)
    assert_raises RPNCalculator.compute(bad_input_2)
    assert_raises RPNCalculator.compute(bad_input_3)
  end

  def test_correct_input
    good_input_1 = [12, 3, "-", 3, "/"]
    good_input_2 = [2, 3, 11, "+", 5, "-","*"]
    good_input_2 = [6, 4, 5, "+", "*", 25, 2, 3, "+", "/", "-"]

    assert_equal RPNCalculator.compute(good_input_1), 3
    assert_equal RPNCalculator.compute(good_input_2), 18
    assert_equal RPNCalculator.compute(good_input_3), 49
  end

end
