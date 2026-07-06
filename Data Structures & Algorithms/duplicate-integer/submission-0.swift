class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var existing: [Int] = []
        
        for num in nums {
            if existing.contains(num) {
                return true
            }
            
            existing.append(num)
        }
        
        return false
    }
}
