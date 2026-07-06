/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {

        func height(_ node: TreeNode?) -> Int{
            if node == nil {
                return 0
            }

            return 1 + max(height(node?.left), height(node?.right))
        }

        if root == nil {
            return true
        }

        var heightL = height(root?.left)
        var heightR = height(root?.right)

        if abs(heightL - heightR) > 1 {
            return false
        }

        return isBalanced(root?.left) && isBalanced(root?.right)
    }
}
