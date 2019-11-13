class Stack
  attr_accessor :top

  def initialize
    @top = -1
    @body = []
  end

  def push(data)
    @top += 1
    @body[@top] = data
  end

  def pop
    return if @top == -1
    @top -= 1
    nil
  end

  def print_stack
    if @top == -1
      puts "No stack present ..!!"
    else
      local_top = @top
      while local_top != -1
        puts @body[local_top]
        local_top -= 1
      end
    end
  end

  def is_empty?
    @top == -1
  end
end

a = Stack.new
a.push 1
a.push 2
a. push 23
