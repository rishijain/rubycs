# use stack to evaluate postfix expression


load 'stack_array.rb'

class EvaluatePostFix
  def initialize(expr)
    @str = expr
    @operators = ['+', '-', '/', '*']
  end

  def evaluate
    result = nil
    @stack = Stack.new
    @str.split('').each do |char|
      if @operators.include?(char)
        operand1 = @stack.pop.to_i
        operand2 = @stack.pop.to_i
        result = operand2.send(char.to_sym, operand1)
        @stack.push result
      else
        @stack.push char
      end
    end


    print @stack.top
    if @stack.top != 0
      print 'pls check the expression passed'
    else
      print 'the answer is:'
      print @stack.pop
    end
  end
end
