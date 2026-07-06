/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {

        var store = Set<ObjectIdentifier>()
        var current = head

        while let node = current {

            let id = ObjectIdentifier(node)

            if store.contains(id) {
                return true
            }

            store.insert(id)

            current = node.next
        }

        return false
    }
}
