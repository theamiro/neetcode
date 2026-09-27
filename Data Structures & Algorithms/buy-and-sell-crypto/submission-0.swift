typealias Profit = Int
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var best = 0

        for right in 1..<prices.count {
            if prices[right] < prices[left] {
                left = right
            } else {
                best = max(best, prices[right] - prices[left])
            }
        }

        return best
    }
}
