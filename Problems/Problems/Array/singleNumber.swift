//
//  singleNumber.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 02.12.2022.
//

import Foundation

// ^ - XOR
func singleNumber(_ nums: [Int]) -> Int {
    var mask = 0
    for n in nums {
        mask ^= n
    }
    return mask
}

// https://leetcode.com/problems/single-number/
// MARK: - Cases
// [2,2,1] -> 1
// [4,1,2,1,2] -> 4  0 1
// [1,0,1] -> 0 
//  0 1 2

