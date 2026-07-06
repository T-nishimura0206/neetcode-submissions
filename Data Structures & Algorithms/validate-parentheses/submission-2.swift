class Solution {
    func isValid(_ s: String) -> Bool {
        
        var stack: [Character] = []
        var pairs: [Character:Character] = ["(":")", "{":"}", "[":"]"]
       
        for c in s {
            if c == "(" || c == "[" || c == "{" {
                // stackに追加
                stack.append(c)
            } else {
                if stack.isEmpty { // stackが空ならfalse（開き括弧があるはずだから）
                    return false
                } else if let last = stack.last, pairs[last] != c { // 最後の要素と比較
                    return false
                } else {
                    stack.removeLast()// 一致ならremoveLast()
                }
            }
        }
        return stack.isEmpty ? true : false
    }
}
