# level order traversal of a binary tree
# also called as breadth first traversal


load 'queue_array.rb'
load 'bst.rb'

def traverse(root)
  q = Queue.new
  if root.nil?
    print 'empty tree'
  else
    q.push root
    while !q.is_empty?
      print q.front_data.data
      q.push q.front_data.left if q.front_data.left
      q.push q.front_data.right if q.front_data.right
      q.pop
    end
  end
end
