//
//  hasCycle.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 04/01/2023.
//

import Foundation

func hasCycle(_ head: ListNode?) -> Bool {
    var slow = head
    var fast = head?.next
    
    while slow?.next != nil && fast?.next != nil {
        if slow === fast {
            return true
        }
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    return false
}

// MARK: - Cases
// [3,2,0,-4] -> true
