import Foundation

/// Problem: House Robber
/// Difficulty: Medium
/// Link: https://leetcode.com/problems/house-robber/

// MARK: - Solution
// Time Complexity: O(n) - We iterate through the houses once.
// Space Complexity: O(1) - We only store two variables for previous maximums.

class Solution {
    
    func rob(_ nums: [Int]) -> Int {

        var rob1 = 0
        var rob2 = 0
        
        for n in nums {
            let temp = max(n + rob1, rob2)
            
            rob1 = rob2
            rob2 = temp
        }
        
        return rob2
    }
}
