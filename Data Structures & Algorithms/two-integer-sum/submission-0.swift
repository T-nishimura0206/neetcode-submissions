class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var store: [Int:Int] = [:]
        
        for (index, num) in nums.enumerated() {
            var sub = target - num
            
            if let pairIndex = store[sub] {
                return [pairIndex, index]
            }
            
            store.updateValue(index, forKey: num)
        }
        
        return []
    }
}
