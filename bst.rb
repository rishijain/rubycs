# insert elements in a bst
#

class Node
  attr_accessor :left, :right, :data
  def initialize(data)
    @data = data
  end

  def print_node
    "#{@left} - #{@data} - #{@right}"
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
end
