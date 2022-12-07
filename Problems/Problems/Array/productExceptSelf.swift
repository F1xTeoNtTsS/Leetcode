//
//  productExceptSelf.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 06.12.2022.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var zeroCount = 0
    var product = 1
    var result: [Int] = []
    
    for num in nums {
        if num == 0 {
            zeroCount += 1
        } else {
            product *= num 
        }
    }
    
    switch zeroCount {
    case 0:
        for n in nums {
            result.append(product/n)
        } 
    case 1:
        for n in nums {
            if n == 0 {
                result.append(product)
            } else {
                result.append(0)
            }
        }
    default:
        for _ in nums {
            result.append(0)
        } 
    }
    
    return result
}

func productExceptSelf2(_ nums: [Int]) -> [Int] {
    var arr = Array.init(repeating: 1, count: nums.count)
    
    for i in (0..<(nums.count - 1)).reversed() {
        arr[i] = arr[i + 1] * nums[i + 1]
    }
    var left = 1
    for i in 0..<nums.count {
        if i == 0 {
            arr[i] = left * arr[i]
        } else {
            left = left * nums[i - 1]
            arr[i] = left * arr[i]
        }
        
    }
    return  arr
}

// MARK: - Cases
// [1, 2, 3, 4] -> [24, 12, 8, 6] [24 12 4 1]
// [0, 1, 2, 3] -> [6, 0, 0, 0]
// [0, 1, 2, 0] -> [0, 0, 0, 0]
