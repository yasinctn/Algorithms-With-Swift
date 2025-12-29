import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 * public var val: Int
 * public var next: ListNode?
 * public init() { self.val = 0; self.next = nil; }
 * public init(_ val: Int) { self.val = val; self.next = nil; }
 * public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

/// Problem: Merge Two Sorted Lists
/// Difficulty: Easy
/// Link: https://leetcode.com/problems/merge-two-sorted-lists/

// MARK: - Solution
// Time Complexity: O(n + m) - We iterate through both lists exactly once.
// Space Complexity: O(1) - We use constant extra space, just rewiring existing nodes.

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        let dummy = ListNode(0)
        var tail = dummy
        
        var l1 = list1
        var l2 = list2
        
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                tail.next = l1
                l1 = l1?.next
            } else {
                tail.next = l2
                l2 = l2?.next
            }
            tail = tail.next!
        }
        
        if l1 != nil {
            tail.next = l1
        } else if l2 != nil {
            tail.next = l2
        }
        
        return dummy.next
    }
}
