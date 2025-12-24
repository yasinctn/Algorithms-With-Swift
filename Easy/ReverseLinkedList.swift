import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

// Problem: Reverse Linked List
// Difficulty: Easy
// Link: https://leetcode.com/problems/reverse-linked-list/

// MARK: - Solution
// Time Complexity: O(n) -> Tüm listeyi bir kere geziyoruz.
// Space Complexity: O(1) -> Ekstra hafıza kullanmıyoruz, sadece pointerları değiştiriyoruz.

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
    
        var prev: ListNode? = nil
        var curr = head
        
        while curr != nil {
            let nextTemp = curr?.next
            curr?.next = prev
            prev = curr
            curr = nextTemp
        }
        
        return prev
    }
}
