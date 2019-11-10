#program to implement append and delete operation for double linked list
class Node
  attr_accessor :next_node, :prev_node, :data
  def initialize(data, next_node=nil, prev_node=nil)
    @data = data
    @next_node = next_node
    @prev_node = prev_node
  end

  def print_node
    puts "data: #{@data}, next node: #{@next_node&.data}, prev node: #{@prev_node&.data}"
  end
end

class DoublyLinkedList
  def intialize(head = nil)
    @head = head
  end

  def append(data)
    tmp_head = @head
    n = Node.new(data)
    if @head.nil?
      @head = n
    else
      while !tmp_head.next_node.nil?
        tmp_head = tmp_head.next_node
      end
      tmp_head.next_node = n
      n.prev_node = tmp_head
    end
  end

  def print_list
    tmp_head = @head
    if tmp_head.nil?
      print "list does not exist"
    else
      while !tmp_head.next_node.nil?
        tmp_head.print_node
        tmp_head = tmp_head.next_node
      end
      tmp_head.print_node
    end
  end

  def delete(target)
    tmp_head = @head
    end_search = false
    while tmp_head&.data != target && end_search != true
      if tmp_head.data == target
        end_search = true
      elsif tmp_head.data != target && tmp_head.next_node.nil?
        end_search = true
        tmp_head = tmp_head&.next_node
      else
        tmp_head = tmp_head&.next_node
      end
    end
    found_target = tmp_head
    print 'aaa'
    print found_target.inspect
    if found_target.nil? || found_target.data != target
      print "not found"
    elsif found_target.prev_node.nil? && found_target.next_node.nil?
      @head = nil
    elsif found_target.prev_node.nil?
      found_target.next_node.prev_node = nil
      @head = found_target.next_node
    elsif found_target.next_node.nil?
      found_target.prev_node.next_node = nil
    else
      found_target.prev_node.next_node = found_target.next_node
      found_target.next_node.prev_node = found_target.prev_node
    end
  end

  def insert_at_head(target)
    if @head
      new_head = Node.new(target)
      tmp_head = @head
      tmp_head.prev_node = new_head
      new_head.next_node = tmp_head
      new_head.prev_node = nil
      @head = new_head
    else
      new_head = Node.new(target)
      @head = new_head
    end
  end
end


ss = DoublyLinkedList.new
ss.append 1
ss.append 2
ss.append 3
ss.append 4
ss.append 5
ss.print_list

ss.insert_at_head 12
ss.print_list
