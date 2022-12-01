//
//  peakIndexInMountainArray.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 01.12.2022.
//

import Foundation

func peakIndexInMountainArray(_ arr: [Int]) -> Int {
    if arr.count == 1 {
        return 0
    }
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        let mid = (right + left) / 2
        if mid + 1 < arr.count, arr[mid] < arr[mid + 1] {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return left
}

// https://leetcode.com/problems/peak-index-in-a-mountain-array
// MARK: Cases
// [0,1,0] -> 1
// [0,2,1,0] -> 1
// [0,10,5,2] -> 1
// [0, 1, 2, 3, 4, 5, 3, 2, 1] -> 5
// [1,2,1,3,5,6,4] -> 5
// [1,2,3,1] -> 2
// 0 1 2 3 4 2 1 1 1
