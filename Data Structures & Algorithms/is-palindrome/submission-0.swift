class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        let chars = Array(s.lowercased())
        
        var left: Int = 0
        var right: Int = s.count - 1
          
        while left < right {
            if !chars[left].isLetter && !chars[left].isNumber {
                left += 1
                continue
            }
            
            if !chars[right].isLetter && !chars[right].isNumber {
                right -= 1
                continue
            }
            
            if chars[left].lowercased() != chars[right].lowercased() {
                return false
            }
            
            left += 1
            right -= 1
        }
        return true
    }
}
