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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {

        var answer = 0

        func depth(_ node: TreeNode?) -> Int {
            if node == nil {
                return 0
            }

            let left = depth(node?.left)
            let right = depth(node?.right)

            answer = max(answer, left + right)
            
            return 1 + max(left, right)
        }

        depth(root)

        return answer
    }
}
