## RPN Calculator

* To use, 'ruby run_rpn_calculator.rb'. Enter your postfix equation, one number or operator (+, -, * or /) at a time followed by <return>.
When done, enter 'q' or <ctrl-D>.

An example: "6 4 5 + * 25 2 3 + /" equates to the infix equation of "6*(4+5) - 25/(2+3)" and results in 49.

* To see more about Reverse Polish notation, check it out [here](https://en.wikipedia.org/wiki/Reverse_Polish_notation).

* For a more readable option on how postfix equations are processed, click on the [link](http://www.teach-ict.com/as_as_computing/ocr/H447/F453/3_3_7/revpolish/miniweb/pg2.htm).

### Files in this repository

* run_rpn_calculator.rb: To interactively use the calculator.
* rpn_test.rb: To run the battery of unit tests.
* rpn_calculator.rb: the RPNCalculator class
* rpn_error.rb: custom RPN error class
