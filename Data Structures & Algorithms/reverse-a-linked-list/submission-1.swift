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
   func reverseList(_ head: ListNode?) -> ListNode? {

    // 反転済みリストの先頭
    var prev: ListNode? = nil

    // 現在見ているノード
    var current = head

    // current がなくなるまで繰り返す
    while current != nil {

        // 次のノードを退避
        // （これをしないと current.next を書き換えた瞬間に
        // 残りのリストへ辿れなくなる）
        let next = current?.next

        // current の向きを反転
        // current.next が prev を指すようにする
        current?.next = prev

        // prev を一歩進める
        // （反転済みリストを伸ばす）
        prev = current

        // current を一歩進める
        // （退避しておいた next へ移動）
        current = next
    }

    // 最後に prev が新しい先頭
    return prev
    }
}
