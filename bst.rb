# insert elements in a bst
# search element in a bst

class Node
  attr_accessor :left, :right, :data
  def initialize(data)
    @data = data
  end

  def print_node
    "#{@left&.data} - #{@data} - #{@right&.data}"
  end
end


class Bst
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(data)
    insert_node(@root, data)
    self
  end

  def search(data)
    res = search_internal(@root, data)
    if res.nil?
      print "not found"
    else
      print res.print_node
    end
  end

  def min_element(root)
    if root.nil?
      print "no tree"
    elsif root.left.nil?
      print "min is: #{root.data}"
    else
      min_element(root.left)
    end
  end

  def max_element(root)
    if root.nil?
      print "no tree"
    elsif root.right.nil?
      print "max is: #{root.data}"
    else
      max_element(root.right)
    end
  end

  private

  def insert_node(tmp_root, data)
    new_node = Node.new data
    if tmp_root.nil?
      tmp_root = new_node
      @root = tmp_root if @root.nil?
    else
      if data <= tmp_root.data
        if tmp_root.left.nil?
          tmp_root.left = new_node
        else
          insert_node(tmp_root.left, data)
        end
      else
        if tmp_root.right.nil?
          tmp_root.right = new_node
        else
          insert_node(tmp_root.right, data)
        end
      end
    end
  end

  def search_internal(tmp_root, data)
    if tmp_root.nil?
      return nil
    elsif tmp_root.data == data
      return tmp_root
    elsif data < tmp_root.data
      search_internal(tmp_root.left, data)
    elsif data > tmp_root.data
      search_internal(tmp_root.right, data)
    end
  end
end
