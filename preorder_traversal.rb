# pre order traversal
#
#
#
load 'bst.rb'

def preorder_traverse(root)
  if root.nil?
    return
  else
    puts root.data
    preorder_traverse(root.left)
    preorder_traverse(root.right)
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

preorder_traverse(b.root)
