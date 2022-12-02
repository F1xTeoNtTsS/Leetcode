//
//  findDisappearedNumbers.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 02.12.2022.
//

import Foundation

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    
    var dict: [Int: Bool] = [:]
    var result: [Int] = []
    
    for num in nums {
        dict[num] = true
    }
    
    for n in 1...nums.count {
        if dict[n] == nil {
            result.append(n)
        }
    }
    
    return result
}

// https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
// MARK: - Cases
// [4,3,2,7,8,2,3,1] -> [5, 6] [1, 2, 2, 3, 3, 4, 7, 8]
// [1,1] -> [2]
