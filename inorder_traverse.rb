# in order traversal
#
#
#
load 'bst.rb'

def inorder_traverse(root)
  if root.nil?
    return
  else
    inorder_traverse(root.left)
    puts root.data
    inorder_traverse(root.right)
  end
end

b = Bst.new
b.insert 10
b.insert 8
b.insert 15
b.insert 5
b.insert 9
b.insert 13
b.insert 20

inorder_traverse(b.root)
