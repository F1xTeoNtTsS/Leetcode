//
//  countKDifference.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 25/04/2023.
//

import Foundation

func countKDifference(_ nums: [Int], _ k: Int) -> Int {
    let lengh = nums.count - 1
    guard lengh > 1 else { return 0 }
    var first = 0
    var second = 1

    var count = 0

    while first < lengh {
        let result = abs(nums[first] - nums[second])
        if result == k {
            count += 1
        }
        second += 1
        if second > lengh {
            second = first + 1
            first += 1
        }
    }

    return count
}
