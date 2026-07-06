class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            // 中央値midを取る（Int同士の割り算は少数が切り捨てられる）
            var mid = (left + right) / 2

            if nums[mid] < target {
                left = mid + 1
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                return mid
            }
        }
        
        return -1
    }
}
