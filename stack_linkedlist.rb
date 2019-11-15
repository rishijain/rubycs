# linked list implementation of stack
# elements can only be popped and pushed at the head unlike the traditional linked list where things go at the tail
# this is done to keep the time complexity constant which is one of the features of stack datatype

class Node
  attr_accessor :data, :next_node

  def intialize(data=nil)
    @data = data
    @next_node = nil
  end

  def print_node
    puts "data: #{@data}, next: #{@next_node}"
  end
end

class LinkedList
  attr_accessor :head
  def intialize
    @head = nil
  end

  def print_list
    tmp_head = @head
    if tmp_head.nil?
      print "empty stack"
      return
    end

    while !tmp_head.next_node.nil?
      tmp_head.print_node
      tmp_head = tmp_head.next_node
    end
    tmp_head.print_node
  end

  def push(data)
    new_node = Node.new
    new_node.data = data
    if @head.nil?
      @head = new_node
      new_node.next_node = nil
    else
      new_node.next_node = @head
      @head = new_node
    end
    print_list
  end

  def pop
    if @head.nil?
      print "already empty stack, nothing to pop"
    elsif @head.next_node.nil?
      @head = nil
    else
      new_head = @head.next_node
      @head.next_node = nil
      @head = new_head
    end
    print_list
  end
end


class Stack

  def initialize
    @list = LinkedList.new
  end

  def push(data)
    @list.push data
  end

  def pop
    @list.pop
  end
end
