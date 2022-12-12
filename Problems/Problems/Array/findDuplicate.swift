//
//  findDuplicate.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 08.12.2022.
//

import Foundation

func findDuplicate(_ nums: [Int]) -> Int {
    var set: Set<Int> = []
    
    for n in nums {
        if set.contains(n) {
            return n
        } else {
            set.insert(n)
        }
    }
    
    return 0
}

// https://leetcode.com/problems/find-the-duplicate-number
// MARK: - Cases
// [1,3,4,2,2] -> 2
// [3,1,3,4,2] -> 3
