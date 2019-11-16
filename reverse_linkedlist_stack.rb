# reverse a linked list using a stack
load 'stack_array.rb'
load 'll.rb'

class ReverseLinkedList
  def initialize(list)
    @old_list = list
    @stack = Stack.new
  end

  def insert_into_stack
    tmp_head = @old_list.head
    return if tmp_head.nil?
    while !tmp_head.next_node.nil?
      @stack.push tmp_head
      tmp_head = tmp_head.next_node
    end
    @stack.push tmp_head
  end

  def reverse
    return "nothinng to reverse" if @old_list.head.nil?
    insert_into_stack
    ll = LinkedList.new
    while @stack.is_empty? == false
      data = @stack.pop
      ll.append data.data
      data.next_node = nil
    end
    print ll.print_list
  end
end
