import Foundation

class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 { return false }
        
        var stack = [Character]()
        
        let map: [Character: Character] = [")": "(", "}": "{", "]": "["]
        
        for char in s {
            if let openChar = map[char] {
                if stack.isEmpty || stack.removeLast() != openChar {
                    return false
                }
            } else {
                stack.append(char)
            }
        }
        
        return stack.isEmpty
    }
}
