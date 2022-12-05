//
//  construct2DArray.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 05.12.2022.
//

import Foundation

func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
    guard m * n == original.count else { return [] }
    
    var column = n
    var interimArr: [Int] = []
    var resultArr: [[Int]] = []
    
    for element in original {
        if column > 0 {
            interimArr.append(element)
            column -= 1
        }
        if column == 0 {
            resultArr.append(interimArr)
            interimArr.removeAll()
            column = n
        }
    }
    
    return resultArr
}

// https://leetcode.com/problems/convert-1d-array-into-2d-array/
// MARK: - Cases
// [1,2,3,4], r = 2, c = 2 -> [[1,2],[3,4]]   
// [1,2,3], r = 1, c = 3 -> [[1,2,3]]
// [1,2], r = 1, c = 1 -> []
