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
    func maxDepth(_ root: TreeNode?) -> Int {
    
        var depth = 0
        var node = root

        func countDepth(_ node: TreeNode?, _ depth: Int) -> Int {
            
            if node == nil {
                return depth  
            }

            var cuurentLeftDepth = countDepth(node?.left, (depth + 1))
            var cuurentRightDepth = countDepth(node?.right, (depth + 1))

            return cuurentLeftDepth >= cuurentRightDepth ? cuurentLeftDepth : cuurentRightDepth
        } 

        return countDepth(node, depth)
    }
}
