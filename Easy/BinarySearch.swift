import Foundation

/// Problem: Binary Search
/// Difficulty: Easy
/// Link: https://leetcode.com/problems/binary-search/
    
// MARK: - Solution
// Time Complexity: O(log n) - Her adımda arama aralığını yarıya indiriyoruz.
// Space Complexity: O(1) - İteratif yaklaşım sabit bellek kullanır.

class Solution {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return -1
    }
}
