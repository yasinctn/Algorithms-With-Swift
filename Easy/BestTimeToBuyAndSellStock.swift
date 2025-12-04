import Foundation

/// Problem: Best Time To Buy And Sell Stock
/// Difficulty: Easy
/// URL: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/


class Solution {
    func maxProfit(_ prices: [Int]) -> Int {

        guard !prices.isEmpty else { return 0 }

        var minPrice = Int.max
        var maxProfit = 0

        for price in prices {
            if price < minPrice {
                minPrice = price
            } else if (price - minPrice) > maxProfit {
                maxProfit = price - minPrice
            }
        }
        return maxProfit
    }
}
