//
//  missingNumber.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 01.12.2022.
//

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    // number * (number + 1) / 2 - math formula
    let number = nums.count
    return number * (number + 1) / 2 - nums.reduce(0, +)
}

// https://leetcode.com/problems/missing-number/
// MARK: - Cases
// [0, 1] -> 2
// [1, 2, 4, 3, 0] -> 5
