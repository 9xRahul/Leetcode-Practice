class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isBalanced(TreeNode? root) {
    return _height(root) != -1;
  }

  int _height(TreeNode? node) {
    if (node == null) return 0;

    int leftHeight = _height(node.left);
    if (leftHeight == -1) return -1;

    int rightHeight = _height(node.right);
    if (rightHeight == -1) return -1;

    if ((leftHeight - rightHeight).abs() > 1) {
      return -1;
    }

    return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
  }
}

void main() {
  // Example 1: Balanced tree
  TreeNode root1 = TreeNode(
    1,
    TreeNode(2, TreeNode(4), TreeNode(5)),
    TreeNode(3),
  );

  // Example 2: Unbalanced tree
  TreeNode root2 = TreeNode(
    1,
    TreeNode(2, TreeNode(3, TreeNode(4), null), null),
    null,
  );

  Solution solution = Solution();

  print("Tree 1 balanced? ${solution.isBalanced(root1)}"); // true
  print("Tree 2 balanced? ${solution.isBalanced(root2)}"); // false
}
