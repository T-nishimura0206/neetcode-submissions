class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        // 今までの最安値と最高利益をメモしておく。
        var minPrice = prices[0]
        var profit = 0
        
        // 週の最安値と最高値をチェックしていく
        for price in prices {
            // 今までの最安値より安い場合
            if price < minPrice {
                minPrice = price
            }
            
            let checkDayProfit = price - minPrice
            if profit < checkDayProfit  {
                profit = checkDayProfit
            }
        }
        
        return profit
    }
}
