//
//  reverseList.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 23/12/2022.
//

import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var cur = head
    
    while cur != nil {
        let next = cur?.next
        cur?.next = prev
        prev = cur
        cur = next
    }
    return prev
}

// https://leetcode.com/problems/reverse-linked-list
// MARK: - Cases
// [1,2,3,4,5] -> [5,4,3,2,1]
// [1,2] -> [2,1]
