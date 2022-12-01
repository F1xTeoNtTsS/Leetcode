//
//  containsDuplicate.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 01.12.2022.
//

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict: [Int: Bool] = [:]
    for num in nums {
        if dict[num] != nil {
            return true
        } else {
            dict[num] = true
        }
    }
    
    return false
}

// https://leetcode.com/problems/contains-duplicate/
// MARK: - Cases
// [1,2,3,1] -> true
// [1,2,3,4] -> false
// [1,1,1,3,3,4,3,2,4,2] -> true
