# check for paranthesis balance using a stack

load 'stack_array.rb'

class BalanceParanthesis
  def initialize(str)
    @str = str
    @allowed_chars = [ '(', ')', '[', ']', '{', '}' ]
  end

  def check
    @stack = Stack.new
    @str.split('').each do |char|
      next unless @allowed_chars.include?(char)
      if char == ')' and @stack.top_element  == '('
        @stack.pop
      elsif char == '}' and @stack.top_element  == '{'
        @stack.pop
      elsif char == ']' and @stack.top_element  == '['
        @stack.pop
      else
        @stack.push char
      end
    end
    puts "the paranthesis are in balance: #{@stack.is_empty?}"
  end
end
