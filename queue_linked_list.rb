# queue using a linked list

class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def print_node
    puts "value: #{@data}"
  end
end

class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(data)
    tmp_head = @head
    new_node = Node.new(data, nil)
    if tmp_head.nil?
      @head = new_node
      tmp_head = @head
    else
      while tmp_head.next_node
        tmp_head = tmp_head.next_node
      end
      tmp_head.next_node = new_node 
    end
    new_node
  end

  def print_list
    tmp_head = @head
    while tmp_head.next_node
      tmp_head.print_node
      tmp_head = tmp_head.next_node
    end
    tmp_head.print_node
  end
end

class Queue
  def initialize
    @front = nil
    @rear = nil
    @list = LinkedList.new
  end

  def push(data)
    if @list.head.nil?
      @list.append data
      @front = @list.head
      @rear = @list.head
    else
      new_node = @list.append data
      print new_node
      @rear = new_node
    end
  end

  def print_queue
    return if @front.nil?
    @list.print_list
  end

  def front
    @front
  end

  def is_empty?
    @front.nil? && @rear.nil?
  end

  def pop
    return if @front.nil?
    tb_popped = @list.head
    @list.head = @list.head.next_node
    @front = @list.head
    @rear = nil if @front.nil?
    tb_popped
  end
end
