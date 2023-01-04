//
//  isPalindromeList.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 04/01/2023.
//

import Foundation

func isPalindromeList(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head
    
    while fast != nil && fast?.next != nil {
        fast = fast?.next?.next
        slow = slow?.next
    }
    
    var prev: ListNode? = nil
    
    while slow != nil {
        let next = slow?.next
        slow?.next = prev
        prev = slow
        slow = next
    }
    
    var right = prev
    var left = head
    
    while right != nil {
        if right?.val != left?.val {
            return false
        }
        right = right?.next
        left = left?.next
    }
    
    return true
}

// MARK: - Cases
// [1,2,2,1] -> true
// [1,2] -> false
