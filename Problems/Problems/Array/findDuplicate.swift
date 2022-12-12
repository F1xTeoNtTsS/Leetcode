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



func findDuplicates(_ nums: [Int]) -> [Int] {
    var dict: [Int: Int] = [:]
    
    for n in nums {
        if let value = dict[n] {
            dict[n] = value + 1
        } else {
           dict[n] = 1 
        }
    }
    
    return dict.filter({ $0.value == 2 }).map({ $0.key })
}

// https://leetcode.com/problems/find-all-duplicates-in-an-array/
// MARK: - Cases
// [4,3,2,7,8,2,3,1] -> [2, 3]
// [1,1,2] -> [1]
