import Foundation

/// Problem: Roman to Integer
/// Difficulty: Easy
/// Link: https://leetcode.com/problems/roman-to-integer/

// MARK: - Solution
// Time Complexity: O(n) - We iterate through the string exactly once.
// Space Complexity: O(1) - We use only a few integer variables (total, prevValue) for storage.

class Solution {
    
    func romanToInt(_ s: String) -> Int {
        var total = 0
        var prevValue = 0
        
        for char in s.reversed() {
            let currentValue = value(of: char)
            
            if currentValue < prevValue {
                total -= currentValue
            } else {
                total += currentValue
            }
            prevValue = currentValue
        }
        return total
    }
    
    private func value(of char: Character) -> Int {
        switch char {
        case "I": return 1
        case "V": return 5
        case "X": return 10
        case "L": return 50
        case "C": return 100
        case "D": return 500
        case "M": return 1000
        default: return 0
        }
    }
}
