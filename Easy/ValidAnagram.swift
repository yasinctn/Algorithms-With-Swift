import Foundation

/// Problem: Valid Anagram
/// Difficulty: Easy
/// Link: https://leetcode.com/problems/valid-anagram/

class Solution {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        guard s.count == t.count else { return false }
        
        var charCount = [Character: Int]()
        
        for char in s {
            charCount[char, default: 0] += 1
        }
        
        for char in t {
            if let count = charCount[char], count > 0 {
                charCount[char] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}
