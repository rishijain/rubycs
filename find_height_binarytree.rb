# height of a binary tree

load 'bst.rb'

def find_height(root)
  if root.nil?
    return -1
  end

  left_height = find_height(root.left)
  right_height = find_height(root.right)

  [left_height, right_height].max + 1
end
