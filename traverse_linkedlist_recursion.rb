class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def print_node
    if @next_node
      puts "value: #{@data}, next: #{@next_node.data}"
    else
      puts "value: #{@data}, next: nil"
    end
  end
end

class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(data)
    tmp_head = @head
    if tmp_head.nil?
      @head = Node.new(data, nil)
    else
      while tmp_head.next_node
        tmp_head = tmp_head.next_node
      end
      tmp_head.next_node = Node.new(data, nil)
    end
  end

  def print_list
    tmp_head = @head
    while tmp_head.next_node
      tmp_head.print_node
      tmp_head = tmp_head.next_node
    end
    tmp_head.print_node
  end

  def append_after(target, value)
    tmp_head = @head
    while !tmp_head.nil? && tmp_head.data != target
      tmp_head = tmp_head.next_node
    end

    if tmp_head.nil?
      puts "tagret does not exist"
      return
    end
    new_target = tmp_head.next_node
    new_node = Node.new(value)
    tmp_head.next_node = new_node
    new_node.next_node = new_target
  end

  def delete(target)
    tmp_head = @head
    if tmp_head.nil?
      puts "target does not exist"
      return
    elsif tmp_head.data == target
      @head = tmp_head.next_node
    else
      prev_target = tmp_head
      next_target = tmp_head.next_node.next_node
      while tmp_head.next_node.data != target
        prev_target = tmp_head
        next_target = tmp_head.next_node.next_node
        tmp_head = tmp_head.next_node
      end
      if prev_target && next_target
        prev_target.next_node = next_target
      end
    end
  end
end


def traverse_ahead(head_node)
  puts "value: #{head_node.data}"
  if !head_node.next_node.nil?
    traverse_ahead(head_node.next_node)
  end
end


def traverse_reverse(head_node)
  if !head_node.next_node.nil?
    traverse_reverse(head_node.next_node)
  end
  puts "value: #{head_node.data}"
end
