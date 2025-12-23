import Foundation

/// Problem: Product of Array Except Self
/// Difficulty: Medium
/// Link: https://leetcode.com/problems/product-of-array-except-self/


// MARK: - Solution
// Time Complexity: O(n) -> Diziyi bir kez soldan, bir kez sağdan geziyoruz (2n -> O(n)).
// Space Complexity: O(1) -> Çıktı dizisi (output array) haricinde ekstra hafıza kullanmıyoruz.

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var output = Array(repeating: 1, count: nums.count)
        
        var leftProduct = 1
        
        for i in 0..<nums.count {
            output[i] = leftProduct
            
            leftProduct *= nums[i]
        }
        
        var rightProduct = 1
        
        for i in (0..<nums.count).reversed() {
            output[i] *= rightProduct
            
            rightProduct *= nums[i]
        }
        
        return output
    }
}
