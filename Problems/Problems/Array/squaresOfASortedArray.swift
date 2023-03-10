//
//  squaresOfASortedArray.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 10/03/2023.
//

import Foundation

func sortedSquares(_ nums: [Int]) -> [Int] {
    nums.map { $0 * $0 }.sorted(by: {$0 < $1})
}


func sortedSquaresTP(_ nums: [Int]) -> [Int] {
    var leading = 0
    var trailing = nums.count - 1

    var result = nums
    var index = trailing

    while index >= 0 {
        if abs(nums[leading]) < abs(nums[trailing]) {
            result[index] = nums[trailing] * nums[trailing]
            trailing -= 1
        } else {
            result[index] = nums[leading] * nums[leading]
            leading += 1
        }
        index -= 1
    }

    return result
}

// https://leetcode.com/problems/squares-of-a-sorted-array/
// MARK: - Cases
// [-4,-1,0,3,10] -> [0,1,9,16,100]
// [-7,-3,2,3,11] -> [4,9,9,49,121]
