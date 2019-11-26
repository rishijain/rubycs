#post order traversal
#
#
#
load 'bst.rb'

def postorder_traverse(root)
  if root.nil?
    return
  else
    postorder_traverse(root.left)
    postorder_traverse(root.right)
    puts root.data
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

postorder_traverse(b.root)
