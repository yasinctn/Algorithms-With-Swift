import Foundation

/// Problem: Climbing Stairs
/// Difficulty: Easy
/// Link: https://leetcode.com/problems/climbing-stairs/

// MARK: - Solution
// Time Complexity: O(n) - We calculate the value for each step once.

class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 1 { return 1 }
        var prev = 1
        var curr = 1
        
        for _ in 2...n {
            let temp = curr
            curr = prev + curr
            prev = temp
        }
        return curr
    }
}
