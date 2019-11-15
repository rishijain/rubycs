# reverse a string using a stack
load 'stack_array.rb'


class ReverseString

  def initialize(str)
    @str = str
  end

  def reverse
    s = Stack.new
    (0..(@str.length - 1)).each do |t|
      s.push(@str[t])
    end

    new_str = ''
    str_length = @str.length
    while str_length != -1
      popped_data = s.pop
      new_str << popped_data if popped_data 
      str_length -= 1
    end
   
    new_str
  end
end


r = ReverseString.new 'rishi'
r.reverse
